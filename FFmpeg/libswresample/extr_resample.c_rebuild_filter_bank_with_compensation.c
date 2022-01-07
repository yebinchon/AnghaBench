
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_4__ {int phase_count_compensation; int phase_count; int dst_incr_mod; int filter_alloc; int felem_size; int filter_shift; int src_incr; int dst_incr; int ideal_dst_incr; int dst_incr_div; int index; int * filter_bank; int kaiser_beta; int filter_type; int filter_length; int factor; int frac; } ;
typedef TYPE_1__ ResampleContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int INT32_MAX ;
 int av_assert0 (int) ;
 int * av_calloc (int,int) ;
 int av_freep (int **) ;
 int av_reduce (int*,int*,int,int,int) ;
 int build_filter (TYPE_1__*,int *,int ,int ,int,int,int,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int rebuild_filter_bank_with_compensation(ResampleContext *c)
{
    uint8_t *new_filter_bank;
    int new_src_incr, new_dst_incr;
    int phase_count = c->phase_count_compensation;
    int ret;

    if (phase_count == c->phase_count)
        return 0;

    av_assert0(!c->frac && !c->dst_incr_mod);

    new_filter_bank = av_calloc(c->filter_alloc, (phase_count + 1) * c->felem_size);
    if (!new_filter_bank)
        return AVERROR(ENOMEM);

    ret = build_filter(c, new_filter_bank, c->factor, c->filter_length, c->filter_alloc,
                       phase_count, 1 << c->filter_shift, c->filter_type, c->kaiser_beta);
    if (ret < 0) {
        av_freep(&new_filter_bank);
        return ret;
    }
    memcpy(new_filter_bank + (c->filter_alloc*phase_count+1)*c->felem_size, new_filter_bank, (c->filter_alloc-1)*c->felem_size);
    memcpy(new_filter_bank + (c->filter_alloc*phase_count )*c->felem_size, new_filter_bank + (c->filter_alloc - 1)*c->felem_size, c->felem_size);

    if (!av_reduce(&new_src_incr, &new_dst_incr, c->src_incr,
                   c->dst_incr * (int64_t)(phase_count/c->phase_count), INT32_MAX/2))
    {
        av_freep(&new_filter_bank);
        return AVERROR(EINVAL);
    }

    c->src_incr = new_src_incr;
    c->dst_incr = new_dst_incr;
    while (c->dst_incr < (1<<20) && c->src_incr < (1<<20)) {
        c->dst_incr *= 2;
        c->src_incr *= 2;
    }
    c->ideal_dst_incr = c->dst_incr;
    c->dst_incr_div = c->dst_incr / c->src_incr;
    c->dst_incr_mod = c->dst_incr % c->src_incr;
    c->index *= phase_count / c->phase_count;
    c->phase_count = phase_count;
    av_freep(&c->filter_bank);
    c->filter_bank = new_filter_bank;
    return 0;
}

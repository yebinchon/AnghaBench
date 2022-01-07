
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SwrContext {int in_buffer_count; scalar_t__ in_sample_rate; int out_sample_rate; TYPE_1__* resample; } ;
typedef int int64_t ;
struct TYPE_2__ {int phase_count; int ideal_dst_incr; int dst_incr; scalar_t__ compensation_distance; scalar_t__ index; } ;
typedef TYPE_1__ ResampleContext ;


 int AVERROR (int ) ;
 int AV_ROUND_UP ;
 int EINVAL ;
 int FFMAX (int,int) ;
 int INT_MAX ;
 int av_rescale_rnd (int,int ,int,int ) ;

__attribute__((used)) static int64_t get_out_samples(struct SwrContext *s, int in_samples) {
    ResampleContext *c = s->resample;



    int64_t num = s->in_buffer_count + 2LL + in_samples;
    num *= c->phase_count;
    num -= c->index;
    num = av_rescale_rnd(num, s->out_sample_rate, ((int64_t)s->in_sample_rate) * c->phase_count, AV_ROUND_UP) + 2;

    if (c->compensation_distance) {
        if (num > INT_MAX)
            return AVERROR(EINVAL);

        num = FFMAX(num, (num * c->ideal_dst_incr - 1) / c->dst_incr + 1);
    }
    return num;
}

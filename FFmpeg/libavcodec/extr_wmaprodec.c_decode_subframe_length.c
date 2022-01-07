
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int samples_per_frame; int min_samples_per_subframe; int avctx; scalar_t__ subframe_len_bits; int gb; scalar_t__ max_subframe_len_bit; } ;
typedef TYPE_1__ WMAProDecodeCtx ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int) ;
 int get_bits (int *,scalar_t__) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_left (int *) ;

__attribute__((used)) static int decode_subframe_length(WMAProDecodeCtx *s, int offset)
{
    int frame_len_shift = 0;
    int subframe_len;


    if (offset == s->samples_per_frame - s->min_samples_per_subframe)
        return s->min_samples_per_subframe;

    if (get_bits_left(&s->gb) < 1)
        return AVERROR_INVALIDDATA;


    if (s->max_subframe_len_bit) {
        if (get_bits1(&s->gb))
            frame_len_shift = 1 + get_bits(&s->gb, s->subframe_len_bits-1);
    } else
        frame_len_shift = get_bits(&s->gb, s->subframe_len_bits);

    subframe_len = s->samples_per_frame >> frame_len_shift;


    if (subframe_len < s->min_samples_per_subframe ||
        subframe_len > s->samples_per_frame) {
        av_log(s->avctx, AV_LOG_ERROR, "broken frame: subframe_len %i\n",
               subframe_len);
        return AVERROR_INVALIDDATA;
    }
    return subframe_len;
}

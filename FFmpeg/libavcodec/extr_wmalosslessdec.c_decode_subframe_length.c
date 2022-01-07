
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int samples_per_frame; int min_samples_per_subframe; int avctx; int gb; scalar_t__ max_num_subframes; } ;
typedef TYPE_1__ WmallDecodeCtx ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int) ;
 int av_log2 (scalar_t__) ;
 int get_bits (int *,int) ;

__attribute__((used)) static int decode_subframe_length(WmallDecodeCtx *s, int offset)
{
    int frame_len_ratio, subframe_len, len;


    if (offset == s->samples_per_frame - s->min_samples_per_subframe)
        return s->min_samples_per_subframe;

    len = av_log2(s->max_num_subframes - 1) + 1;
    frame_len_ratio = get_bits(&s->gb, len);
    subframe_len = s->min_samples_per_subframe * (frame_len_ratio + 1);


    if (subframe_len < s->min_samples_per_subframe ||
        subframe_len > s->samples_per_frame) {
        av_log(s->avctx, AV_LOG_ERROR, "broken frame: subframe_len %i\n",
               subframe_len);
        return AVERROR_INVALIDDATA;
    }
    return subframe_len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_6__ {scalar_t__ type; int* sample_fmts; } ;
struct TYPE_5__ {int request_sample_fmt; int sample_fmt; } ;
typedef TYPE_1__ AVCodecContext ;
typedef TYPE_2__ AVCodec ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int const AV_SAMPLE_FMT_NONE ;
 int av_get_packed_sample_fmt (int) ;
 int av_get_planar_sample_fmt (int) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;

void hb_ff_set_sample_fmt(AVCodecContext *context, AVCodec *codec,
                          enum AVSampleFormat request_sample_fmt)
{
    if (context != ((void*)0) && codec != ((void*)0) &&
        codec->type == AVMEDIA_TYPE_AUDIO && codec->sample_fmts != ((void*)0))
    {
        const enum AVSampleFormat *fmt;
        enum AVSampleFormat next_best_fmt;

        next_best_fmt = (av_sample_fmt_is_planar(request_sample_fmt) ?
                         av_get_packed_sample_fmt(request_sample_fmt) :
                         av_get_planar_sample_fmt(request_sample_fmt));

        context->request_sample_fmt = AV_SAMPLE_FMT_NONE;

        for (fmt = codec->sample_fmts; *fmt != AV_SAMPLE_FMT_NONE; fmt++)
        {
            if (*fmt == request_sample_fmt)
            {
                context->request_sample_fmt = request_sample_fmt;
                break;
            }
            else if (*fmt == next_best_fmt)
            {
                context->request_sample_fmt = next_best_fmt;
            }
        }





        if (context->request_sample_fmt == AV_SAMPLE_FMT_NONE)
        {
            context->request_sample_fmt = codec->sample_fmts[0];
        }
        context->sample_fmt = context->request_sample_fmt;
    }
}

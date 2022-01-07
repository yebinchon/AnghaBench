
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int capabilities; } ;
struct TYPE_7__ {int thread_count; int thread_type; int thread_safe_callbacks; int strict_std_compliance; } ;
typedef int AVDictionary ;
typedef TYPE_1__ AVCodecContext ;
typedef TYPE_2__ AVCodec ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_CAP_EXPERIMENTAL ;
 int FF_COMPLIANCE_EXPERIMENTAL ;
 int FF_THREAD_FRAME ;
 int FF_THREAD_SLICE ;
 int HB_FFMPEG_THREADS_AUTO ;
 int avcodec_open2 (TYPE_1__*,TYPE_2__*,int **) ;
 int hb_get_cpu_count () ;

int hb_avcodec_open(AVCodecContext *avctx, AVCodec *codec,
                    AVDictionary **av_opts, int thread_count)
{
    int ret;

    if ((thread_count == HB_FFMPEG_THREADS_AUTO || thread_count > 0) &&
        (codec->type == AVMEDIA_TYPE_VIDEO))
    {
        avctx->thread_count = (thread_count == HB_FFMPEG_THREADS_AUTO) ?
                               hb_get_cpu_count() / 2 + 1 : thread_count;
        avctx->thread_type = FF_THREAD_FRAME|FF_THREAD_SLICE;
        avctx->thread_safe_callbacks = 1;
    }
    else
    {
        avctx->thread_count = 1;
    }

    if (codec->capabilities & AV_CODEC_CAP_EXPERIMENTAL)
    {

        avctx->strict_std_compliance = FF_COMPLIANCE_EXPERIMENTAL;
    }

    ret = avcodec_open2(avctx, codec, av_opts);
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* avpkt; TYPE_3__* frame; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_9__ {scalar_t__ codec_id; int channels; int * priv_data; } ;
struct TYPE_8__ {int nb_samples; scalar_t__ extended_data; } ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef int DSDContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_DSD_LSBF ;
 scalar_t__ AV_CODEC_ID_DSD_LSBF_PLANAR ;
 scalar_t__ AV_CODEC_ID_DSD_MSBF_PLANAR ;
 int ff_dsd2pcm_translate (int *,int,int,scalar_t__,int,float*,int) ;

__attribute__((used)) static int dsd_channel(AVCodecContext *avctx, void *tdata, int j, int threadnr)
{
    int lsbf = avctx->codec_id == AV_CODEC_ID_DSD_LSBF || avctx->codec_id == AV_CODEC_ID_DSD_LSBF_PLANAR;
    DSDContext *s = avctx->priv_data;
    ThreadData *td = tdata;
    AVFrame *frame = td->frame;
    AVPacket *avpkt = td->avpkt;
    int src_next, src_stride;
    float *dst = ((float **)frame->extended_data)[j];

    if (avctx->codec_id == AV_CODEC_ID_DSD_LSBF_PLANAR || avctx->codec_id == AV_CODEC_ID_DSD_MSBF_PLANAR) {
        src_next = frame->nb_samples;
        src_stride = 1;
    } else {
        src_next = 1;
        src_stride = avctx->channels;
    }

    ff_dsd2pcm_translate(&s[j], frame->nb_samples, lsbf,
                         avpkt->data + j * src_next, src_stride,
                         dst, 1);

    return 0;
}

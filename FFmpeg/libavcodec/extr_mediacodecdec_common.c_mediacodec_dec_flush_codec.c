
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_input_buffer; int hw_buffer_count; int serial; scalar_t__ eos; scalar_t__ flushing; scalar_t__ draining; scalar_t__ output_buffer_count; int * codec; } ;
typedef TYPE_1__ MediaCodecDecContext ;
typedef int FFAMediaCodec ;
typedef int AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int atomic_fetch_add (int *,int) ;
 int atomic_init (int *,int ) ;
 int av_log (int *,int ,char*) ;
 int ff_AMediaCodec_flush (int *) ;

__attribute__((used)) static int mediacodec_dec_flush_codec(AVCodecContext *avctx, MediaCodecDecContext *s)
{
    FFAMediaCodec *codec = s->codec;
    int status;

    s->output_buffer_count = 0;

    s->draining = 0;
    s->flushing = 0;
    s->eos = 0;
    atomic_fetch_add(&s->serial, 1);
    atomic_init(&s->hw_buffer_count, 0);
    s->current_input_buffer = -1;

    status = ff_AMediaCodec_flush(codec);
    if (status < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to flush codec\n");
        return AVERROR_EXTERNAL;
    }

    return 0;
}

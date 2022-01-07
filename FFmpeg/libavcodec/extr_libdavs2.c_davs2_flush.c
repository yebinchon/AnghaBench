
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int out_frame; int decoder; int headerset; } ;
typedef TYPE_1__ DAVS2Context ;
typedef TYPE_2__ AVCodecContext ;


 int AV_LOG_WARNING ;
 int DAVS2_ERROR ;
 int DAVS2_GOT_FRAME ;
 int av_log (TYPE_2__*,int ,char*) ;
 int davs2_decoder_flush (int ,int *,int *) ;
 int davs2_decoder_frame_unref (int ,int *) ;

__attribute__((used)) static void davs2_flush(AVCodecContext *avctx)
{
    DAVS2Context *cad = avctx->priv_data;
    int ret = DAVS2_GOT_FRAME;

    while (ret == DAVS2_GOT_FRAME) {
        ret = davs2_decoder_flush(cad->decoder, &cad->headerset, &cad->out_frame);
        davs2_decoder_frame_unref(cad->decoder, &cad->out_frame);
    }

    if (ret == DAVS2_ERROR) {
        av_log(avctx, AV_LOG_WARNING, "Decoder flushing failed.\n");
    }
}

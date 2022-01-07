
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int qsv; } ;
typedef TYPE_1__ QSVMpeg2EncContext ;
typedef int AVPacket ;
typedef int AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int ff_qsv_encode (TYPE_2__*,int *,int *,int const*,int*) ;

__attribute__((used)) static int qsv_enc_frame(AVCodecContext *avctx, AVPacket *pkt,
                         const AVFrame *frame, int *got_packet)
{
    QSVMpeg2EncContext *q = avctx->priv_data;

    return ff_qsv_encode(avctx, &q->qsv, pkt, frame, got_packet);
}

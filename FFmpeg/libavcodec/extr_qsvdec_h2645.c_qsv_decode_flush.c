
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int qsv; } ;
typedef TYPE_1__ QSVH2645Context ;
typedef TYPE_2__ AVCodecContext ;


 int ff_qsv_decode_flush (TYPE_2__*,int *) ;
 int qsv_clear_buffers (TYPE_1__*) ;

__attribute__((used)) static void qsv_decode_flush(AVCodecContext *avctx)
{
    QSVH2645Context *s = avctx->priv_data;

    qsv_clear_buffers(s);
    ff_qsv_decode_flush(avctx, &s->qsv);
}

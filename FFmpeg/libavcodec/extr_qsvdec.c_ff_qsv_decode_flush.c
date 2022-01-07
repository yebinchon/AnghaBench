
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; int orig_pix_fmt; } ;
typedef TYPE_1__ QSVContext ;
typedef int AVCodecContext ;


 int AV_PIX_FMT_NONE ;

void ff_qsv_decode_flush(AVCodecContext *avctx, QSVContext *q)
{
    q->orig_pix_fmt = AV_PIX_FMT_NONE;
    q->initialized = 0;
}

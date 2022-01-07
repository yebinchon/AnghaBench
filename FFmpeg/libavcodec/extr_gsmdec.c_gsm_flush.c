
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_data; } ;
typedef int GSMContext ;
typedef TYPE_1__ AVCodecContext ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void gsm_flush(AVCodecContext *avctx)
{
    GSMContext *s = avctx->priv_data;
    memset(s, 0, sizeof(*s));
}

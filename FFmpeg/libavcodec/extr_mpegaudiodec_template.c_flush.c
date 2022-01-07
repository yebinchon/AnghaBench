
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv_data; } ;
typedef TYPE_1__ AVCodecContext ;


 int mp_flush (int ) ;

__attribute__((used)) static void flush(AVCodecContext *avctx)
{
    mp_flush(avctx->priv_data);
}

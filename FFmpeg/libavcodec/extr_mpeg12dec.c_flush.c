
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ sync; } ;
typedef TYPE_1__ Mpeg1Context ;
typedef TYPE_2__ AVCodecContext ;


 int ff_mpeg_flush (TYPE_2__*) ;

__attribute__((used)) static void flush(AVCodecContext *avctx)
{
    Mpeg1Context *s = avctx->priv_data;

    s->sync = 0;

    ff_mpeg_flush(avctx);
}

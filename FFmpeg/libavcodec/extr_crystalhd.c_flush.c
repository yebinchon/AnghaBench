
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int dev; scalar_t__ draining; scalar_t__ need_second_field; } ;
typedef TYPE_1__ CHDContext ;
typedef TYPE_2__ AVCodecContext ;


 int DtsFlushInput (int ,int) ;

__attribute__((used)) static void flush(AVCodecContext *avctx)
{
    CHDContext *priv = avctx->priv_data;

    priv->need_second_field = 0;
    priv->draining = 0;


    DtsFlushInput(priv->dev, 4);
}

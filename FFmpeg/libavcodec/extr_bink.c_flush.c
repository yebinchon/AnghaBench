
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ frame_num; } ;
typedef TYPE_1__ BinkContext ;
typedef TYPE_2__ AVCodecContext ;



__attribute__((used)) static void flush(AVCodecContext *avctx)
{
    BinkContext * const c = avctx->priv_data;

    c->frame_num = 0;
}

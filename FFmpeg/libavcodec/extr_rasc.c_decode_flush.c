
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int frame2; int frame1; } ;
typedef TYPE_1__ RASCContext ;
typedef TYPE_2__ AVCodecContext ;


 int clear_plane (TYPE_2__*,int ) ;

__attribute__((used)) static void decode_flush(AVCodecContext *avctx)
{
    RASCContext *s = avctx->priv_data;

    clear_plane(avctx, s->frame1);
    clear_plane(avctx, s->frame2);
}

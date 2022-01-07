
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int got_image_format; int exit; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef TYPE_2__ AVFormatContext ;


 int atomic_load (int *) ;
 int usleep (int) ;

__attribute__((used)) static int wait_for_image_format(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;

    while (!atomic_load(&ctx->got_image_format) && !atomic_load(&ctx->exit)) {

        usleep(1000);
    }

    return atomic_load(&ctx->got_image_format);
}

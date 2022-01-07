
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int exit; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef TYPE_2__ AVFormatContext ;
typedef int ACameraDevice ;


 int ACameraDevice_getId (int *) ;
 int AV_LOG_ERROR ;
 int atomic_store (int *,int) ;
 int av_log (TYPE_2__*,int ,char*,int ) ;

__attribute__((used)) static void camera_dev_disconnected(void *context, ACameraDevice *device)
{
    AVFormatContext *avctx = context;
    AndroidCameraCtx *ctx = avctx->priv_data;
    atomic_store(&ctx->exit, 1);
    av_log(avctx, AV_LOG_ERROR, "Camera with id %s disconnected.\n",
           ACameraDevice_getId(device));
}

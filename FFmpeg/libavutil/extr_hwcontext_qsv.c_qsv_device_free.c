
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* user_opaque; TYPE_2__* hwctx; } ;
struct TYPE_7__ {scalar_t__ session; } ;
struct TYPE_6__ {int child_device_ctx; } ;
typedef TYPE_1__ QSVDevicePriv ;
typedef TYPE_2__ AVQSVDeviceContext ;
typedef TYPE_3__ AVHWDeviceContext ;


 int MFXClose (scalar_t__) ;
 int av_buffer_unref (int *) ;
 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void qsv_device_free(AVHWDeviceContext *ctx)
{
    AVQSVDeviceContext *hwctx = ctx->hwctx;
    QSVDevicePriv *priv = ctx->user_opaque;

    if (hwctx->session)
        MFXClose(hwctx->session);

    av_buffer_unref(&priv->child_device_ctx);
    av_freep(&priv);
}

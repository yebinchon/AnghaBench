
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ VAStatus ;
struct TYPE_9__ {scalar_t__ va_context; scalar_t__ va_config; TYPE_1__* hwctx; int device_ref; scalar_t__ have_old_context; } ;
typedef TYPE_3__ VAAPIDecodeContext ;
struct TYPE_10__ {TYPE_2__* internal; } ;
struct TYPE_8__ {TYPE_3__* hwaccel_priv_data; } ;
struct TYPE_7__ {int display; } ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ VA_INVALID_ID ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_buffer_unref (int *) ;
 int av_log (TYPE_4__*,int ,char*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ vaDestroyConfig (int ,scalar_t__) ;
 scalar_t__ vaDestroyContext (int ,scalar_t__) ;
 int vaErrorStr (scalar_t__) ;

int ff_vaapi_decode_uninit(AVCodecContext *avctx)
{
    VAAPIDecodeContext *ctx = avctx->internal->hwaccel_priv_data;
    VAStatus vas;







    if (ctx->va_context != VA_INVALID_ID) {
        vas = vaDestroyContext(ctx->hwctx->display, ctx->va_context);
        if (vas != VA_STATUS_SUCCESS) {
            av_log(avctx, AV_LOG_ERROR, "Failed to destroy decode "
                   "context %#x: %d (%s).\n",
                   ctx->va_context, vas, vaErrorStr(vas));
        }
    }
    if (ctx->va_config != VA_INVALID_ID) {
        vas = vaDestroyConfig(ctx->hwctx->display, ctx->va_config);
        if (vas != VA_STATUS_SUCCESS) {
            av_log(avctx, AV_LOG_ERROR, "Failed to destroy decode "
                   "configuration %#x: %d (%s).\n",
                   ctx->va_config, vas, vaErrorStr(vas));
        }
    }





    return 0;
}

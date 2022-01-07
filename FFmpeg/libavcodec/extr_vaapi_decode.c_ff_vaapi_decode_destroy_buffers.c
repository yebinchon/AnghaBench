
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ VAStatus ;
struct TYPE_11__ {int nb_param_buffers; int nb_slices; int * slice_buffers; int * param_buffers; } ;
typedef TYPE_3__ VAAPIDecodePicture ;
struct TYPE_12__ {TYPE_2__* hwctx; } ;
typedef TYPE_4__ VAAPIDecodeContext ;
struct TYPE_13__ {TYPE_1__* internal; } ;
struct TYPE_10__ {int display; } ;
struct TYPE_9__ {TYPE_4__* hwaccel_priv_data; } ;
typedef TYPE_5__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_log (TYPE_5__*,int ,char*,int ,scalar_t__,int ) ;
 scalar_t__ vaDestroyBuffer (int ,int ) ;
 int vaErrorStr (scalar_t__) ;

__attribute__((used)) static void ff_vaapi_decode_destroy_buffers(AVCodecContext *avctx,
                                            VAAPIDecodePicture *pic)
{
    VAAPIDecodeContext *ctx = avctx->internal->hwaccel_priv_data;
    VAStatus vas;
    int i;

    for (i = 0; i < pic->nb_param_buffers; i++) {
        vas = vaDestroyBuffer(ctx->hwctx->display,
                              pic->param_buffers[i]);
        if (vas != VA_STATUS_SUCCESS) {
            av_log(avctx, AV_LOG_ERROR, "Failed to destroy "
                   "parameter buffer %#x: %d (%s).\n",
                   pic->param_buffers[i], vas, vaErrorStr(vas));
        }
    }

    for (i = 0; i < 2 * pic->nb_slices; i++) {
        vas = vaDestroyBuffer(ctx->hwctx->display,
                              pic->slice_buffers[i]);
        if (vas != VA_STATUS_SUCCESS) {
            av_log(avctx, AV_LOG_ERROR, "Failed to destroy slice "
                   "slice buffer %#x: %d (%s).\n",
                   pic->slice_buffers[i], vas, vaErrorStr(vas));
        }
    }
}

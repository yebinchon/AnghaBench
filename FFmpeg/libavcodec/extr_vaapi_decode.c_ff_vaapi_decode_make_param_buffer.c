
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
typedef int VABufferID ;
struct TYPE_11__ {scalar_t__ nb_param_buffers; int * param_buffers; } ;
typedef TYPE_3__ VAAPIDecodePicture ;
struct TYPE_12__ {int va_context; TYPE_1__* hwctx; } ;
typedef TYPE_4__ VAAPIDecodeContext ;
struct TYPE_13__ {TYPE_2__* internal; } ;
struct TYPE_10__ {TYPE_4__* hwaccel_priv_data; } ;
struct TYPE_9__ {int display; } ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int EIO ;
 scalar_t__ MAX_PARAM_BUFFERS ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_assert0 (int) ;
 int av_log (TYPE_5__*,int ,char*,int,size_t,int ) ;
 scalar_t__ vaCreateBuffer (int ,int ,int,size_t,int,void*,int *) ;
 int vaErrorStr (scalar_t__) ;

int ff_vaapi_decode_make_param_buffer(AVCodecContext *avctx,
                                      VAAPIDecodePicture *pic,
                                      int type,
                                      const void *data,
                                      size_t size)
{
    VAAPIDecodeContext *ctx = avctx->internal->hwaccel_priv_data;
    VAStatus vas;
    VABufferID buffer;

    av_assert0(pic->nb_param_buffers + 1 <= MAX_PARAM_BUFFERS);

    vas = vaCreateBuffer(ctx->hwctx->display, ctx->va_context,
                         type, size, 1, (void*)data, &buffer);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create parameter "
               "buffer (type %d): %d (%s).\n",
               type, vas, vaErrorStr(vas));
        return AVERROR(EIO);
    }

    pic->param_buffers[pic->nb_param_buffers++] = buffer;

    av_log(avctx, AV_LOG_DEBUG, "Param buffer (type %d, %zu bytes) "
           "is %#x.\n", type, size, buffer);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ VAStatus ;
typedef int VABufferID ;
struct TYPE_7__ {scalar_t__ nb_filter_buffers; int * filter_buffers; int va_context; TYPE_1__* hwctx; } ;
typedef TYPE_2__ VAAPIVPPContext ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int display; } ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int EIO ;
 scalar_t__ VAProcFilterCount ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_assert0 (int) ;
 int av_log (TYPE_3__*,int ,char*,int,size_t,int,...) ;
 scalar_t__ vaCreateBuffer (int ,int ,int,size_t,int,void*,int *) ;
 int vaErrorStr (scalar_t__) ;

int ff_vaapi_vpp_make_param_buffers(AVFilterContext *avctx,
                                    int type,
                                    const void *data,
                                    size_t size,
                                    int count)
{
    VAStatus vas;
    VABufferID buffer;
    VAAPIVPPContext *ctx = avctx->priv;

    av_assert0(ctx->nb_filter_buffers + 1 <= VAProcFilterCount);

    vas = vaCreateBuffer(ctx->hwctx->display, ctx->va_context,
                         type, size, count, (void*)data, &buffer);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create parameter "
               "buffer (type %d): %d (%s).\n",
               type, vas, vaErrorStr(vas));
        return AVERROR(EIO);
    }

    ctx->filter_buffers[ctx->nb_filter_buffers++] = buffer;

    av_log(avctx, AV_LOG_DEBUG, "Param buffer (type %d, %zu bytes, count %d) "
           "is %#x.\n", type, size, count, buffer);
    return 0;
}

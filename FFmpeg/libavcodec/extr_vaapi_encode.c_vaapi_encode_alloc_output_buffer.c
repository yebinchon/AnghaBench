
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int buffer_id ;
typedef scalar_t__ VAStatus ;
typedef scalar_t__ VABufferID ;
struct TYPE_7__ {int surface_width; int surface_height; TYPE_1__* hwctx; int va_context; } ;
typedef TYPE_2__ VAAPIEncodeContext ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
struct TYPE_6__ {int display; } ;
typedef TYPE_3__ AVCodecContext ;
typedef int AVBufferRef ;


 int AV_BUFFER_FLAG_READONLY ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int VAEncCodedBufferType ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int * av_buffer_create (int *,int,int *,TYPE_3__*,int ) ;
 int av_log (TYPE_3__*,int ,char*,scalar_t__,...) ;
 scalar_t__ vaCreateBuffer (int ,int ,int ,int,int,int ,scalar_t__*) ;
 int vaDestroyBuffer (int ,scalar_t__) ;
 int vaErrorStr (scalar_t__) ;
 int vaapi_encode_free_output_buffer ;

__attribute__((used)) static AVBufferRef *vaapi_encode_alloc_output_buffer(void *opaque,
                                                     int size)
{
    AVCodecContext *avctx = opaque;
    VAAPIEncodeContext *ctx = avctx->priv_data;
    VABufferID buffer_id;
    VAStatus vas;
    AVBufferRef *ref;





    vas = vaCreateBuffer(ctx->hwctx->display, ctx->va_context,
                         VAEncCodedBufferType,
                         3 * ctx->surface_width * ctx->surface_height +
                         (1 << 16), 1, 0, &buffer_id);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create bitstream "
               "output buffer: %d (%s).\n", vas, vaErrorStr(vas));
        return ((void*)0);
    }

    av_log(avctx, AV_LOG_DEBUG, "Allocated output buffer %#x\n", buffer_id);

    ref = av_buffer_create((uint8_t*)(uintptr_t)buffer_id,
                           sizeof(buffer_id),
                           &vaapi_encode_free_output_buffer,
                           avctx, AV_BUFFER_FLAG_READONLY);
    if (!ref) {
        vaDestroyBuffer(ctx->hwctx->display, buffer_id);
        return ((void*)0);
    }

    return ref;
}

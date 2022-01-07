
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int surface_id ;
typedef scalar_t__ VASurfaceID ;
typedef scalar_t__ VAStatus ;
struct TYPE_11__ {int nb_attributes; int attributes; int rt_format; } ;
typedef TYPE_3__ VAAPIFramesContext ;
struct TYPE_14__ {scalar_t__ initial_pool_size; int height; int width; TYPE_4__* hwctx; TYPE_2__* device_ctx; TYPE_1__* internal; } ;
struct TYPE_13__ {int display; } ;
struct TYPE_12__ {scalar_t__ nb_surfaces; scalar_t__* surface_ids; } ;
struct TYPE_10__ {TYPE_5__* hwctx; } ;
struct TYPE_9__ {TYPE_3__* priv; } ;
typedef TYPE_4__ AVVAAPIFramesContext ;
typedef TYPE_5__ AVVAAPIDeviceContext ;
typedef TYPE_6__ AVHWFramesContext ;
typedef int AVBufferRef ;


 int AV_BUFFER_FLAG_READONLY ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_assert0 (int) ;
 int * av_buffer_create (int *,int,int *,TYPE_6__*,int ) ;
 int av_log (TYPE_6__*,int ,char*,scalar_t__,...) ;
 scalar_t__ vaCreateSurfaces (int ,int ,int ,int ,scalar_t__*,int,int ,int ) ;
 int vaDestroySurfaces (int ,scalar_t__*,int) ;
 int vaErrorStr (scalar_t__) ;
 int vaapi_buffer_free ;

__attribute__((used)) static AVBufferRef *vaapi_pool_alloc(void *opaque, int size)
{
    AVHWFramesContext *hwfc = opaque;
    VAAPIFramesContext *ctx = hwfc->internal->priv;
    AVVAAPIDeviceContext *hwctx = hwfc->device_ctx->hwctx;
    AVVAAPIFramesContext *avfc = hwfc->hwctx;
    VASurfaceID surface_id;
    VAStatus vas;
    AVBufferRef *ref;

    if (hwfc->initial_pool_size > 0 &&
        avfc->nb_surfaces >= hwfc->initial_pool_size)
        return ((void*)0);

    vas = vaCreateSurfaces(hwctx->display, ctx->rt_format,
                           hwfc->width, hwfc->height,
                           &surface_id, 1,
                           ctx->attributes, ctx->nb_attributes);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(hwfc, AV_LOG_ERROR, "Failed to create surface: "
               "%d (%s).\n", vas, vaErrorStr(vas));
        return ((void*)0);
    }
    av_log(hwfc, AV_LOG_DEBUG, "Created surface %#x.\n", surface_id);

    ref = av_buffer_create((uint8_t*)(uintptr_t)surface_id,
                           sizeof(surface_id), &vaapi_buffer_free,
                           hwfc, AV_BUFFER_FLAG_READONLY);
    if (!ref) {
        vaDestroySurfaces(hwctx->display, &surface_id, 1);
        return ((void*)0);
    }

    if (hwfc->initial_pool_size > 0) {


        av_assert0(avfc->nb_surfaces < hwfc->initial_pool_size);
        avfc->surface_ids[avfc->nb_surfaces] = surface_id;
        ++avfc->nb_surfaces;
    }

    return ref;
}

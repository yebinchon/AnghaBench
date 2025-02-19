
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ VASurfaceID ;
typedef scalar_t__ VAStatus ;
struct TYPE_14__ {int image_id; int buf; } ;
struct TYPE_15__ {int flags; TYPE_3__ image; } ;
typedef TYPE_4__ VAAPIMapping ;
struct TYPE_18__ {int height; int width; TYPE_1__* device_ctx; } ;
struct TYPE_17__ {int display; } ;
struct TYPE_16__ {TYPE_2__* source; TYPE_4__* priv; } ;
struct TYPE_13__ {scalar_t__* data; } ;
struct TYPE_12__ {TYPE_6__* hwctx; } ;
typedef TYPE_5__ HWMapDescriptor ;
typedef TYPE_6__ AVVAAPIDeviceContext ;
typedef TYPE_7__ AVHWFramesContext ;


 int AV_HWFRAME_MAP_DIRECT ;
 int AV_HWFRAME_MAP_WRITE ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_free (TYPE_4__*) ;
 int av_log (TYPE_7__*,int ,char*,scalar_t__,...) ;
 scalar_t__ vaDestroyImage (int ,int ) ;
 int vaErrorStr (scalar_t__) ;
 scalar_t__ vaPutImage (int ,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ vaUnmapBuffer (int ,int ) ;

__attribute__((used)) static void vaapi_unmap_frame(AVHWFramesContext *hwfc,
                              HWMapDescriptor *hwmap)
{
    AVVAAPIDeviceContext *hwctx = hwfc->device_ctx->hwctx;
    VAAPIMapping *map = hwmap->priv;
    VASurfaceID surface_id;
    VAStatus vas;

    surface_id = (VASurfaceID)(uintptr_t)hwmap->source->data[3];
    av_log(hwfc, AV_LOG_DEBUG, "Unmap surface %#x.\n", surface_id);

    vas = vaUnmapBuffer(hwctx->display, map->image.buf);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(hwfc, AV_LOG_ERROR, "Failed to unmap image from surface "
               "%#x: %d (%s).\n", surface_id, vas, vaErrorStr(vas));
    }

    if ((map->flags & AV_HWFRAME_MAP_WRITE) &&
        !(map->flags & AV_HWFRAME_MAP_DIRECT)) {
        vas = vaPutImage(hwctx->display, surface_id, map->image.image_id,
                         0, 0, hwfc->width, hwfc->height,
                         0, 0, hwfc->width, hwfc->height);
        if (vas != VA_STATUS_SUCCESS) {
            av_log(hwfc, AV_LOG_ERROR, "Failed to write image to surface "
                   "%#x: %d (%s).\n", surface_id, vas, vaErrorStr(vas));
        }
    }

    vas = vaDestroyImage(hwctx->display, map->image.image_id);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(hwfc, AV_LOG_ERROR, "Failed to destroy image from surface "
               "%#x: %d (%s).\n", surface_id, vas, vaErrorStr(vas));
    }

    av_free(map);
}

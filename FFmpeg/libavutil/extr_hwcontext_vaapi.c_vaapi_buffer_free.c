
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ VASurfaceID ;
typedef scalar_t__ VAStatus ;
struct TYPE_7__ {TYPE_1__* device_ctx; } ;
struct TYPE_6__ {int display; } ;
struct TYPE_5__ {TYPE_2__* hwctx; } ;
typedef TYPE_2__ AVVAAPIDeviceContext ;
typedef TYPE_3__ AVHWFramesContext ;


 int AV_LOG_ERROR ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_log (TYPE_3__*,int ,char*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ vaDestroySurfaces (int ,scalar_t__*,int) ;
 int vaErrorStr (scalar_t__) ;

__attribute__((used)) static void vaapi_buffer_free(void *opaque, uint8_t *data)
{
    AVHWFramesContext *hwfc = opaque;
    AVVAAPIDeviceContext *hwctx = hwfc->device_ctx->hwctx;
    VASurfaceID surface_id;
    VAStatus vas;

    surface_id = (VASurfaceID)(uintptr_t)data;

    vas = vaDestroySurfaces(hwctx->display, &surface_id, 1);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(hwfc, AV_LOG_ERROR, "Failed to destroy surface %#x: "
               "%d (%s).\n", surface_id, vas, vaErrorStr(vas));
    }
}

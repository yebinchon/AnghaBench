
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int VdpVideoSurface ;
struct TYPE_7__ {int (* surf_destroy ) (int ) ;} ;
typedef TYPE_3__ VDPAUDeviceContext ;
struct TYPE_8__ {TYPE_2__* device_ctx; } ;
struct TYPE_6__ {TYPE_1__* internal; } ;
struct TYPE_5__ {TYPE_3__* priv; } ;
typedef TYPE_4__ AVHWFramesContext ;


 int stub1 (int ) ;

__attribute__((used)) static void vdpau_buffer_free(void *opaque, uint8_t *data)
{
    AVHWFramesContext *ctx = opaque;
    VDPAUDeviceContext *device_priv = ctx->device_ctx->internal->priv;
    VdpVideoSurface surf = (VdpVideoSurface)(uintptr_t)data;

    device_priv->surf_destroy(surf);
}

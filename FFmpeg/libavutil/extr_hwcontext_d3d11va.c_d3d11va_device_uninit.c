
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * lock; int lock_ctx; int * video_context; int * video_device; int * device_context; int * device; } ;
struct TYPE_4__ {TYPE_2__* hwctx; } ;
typedef TYPE_1__ AVHWDeviceContext ;
typedef TYPE_2__ AVD3D11VADeviceContext ;


 int CloseHandle (int ) ;
 int ID3D11DeviceContext_Release (int *) ;
 int ID3D11Device_Release (int *) ;
 int ID3D11VideoContext_Release (int *) ;
 int ID3D11VideoDevice_Release (int *) ;
 int INVALID_HANDLE_VALUE ;
 int * d3d11va_default_lock ;

__attribute__((used)) static void d3d11va_device_uninit(AVHWDeviceContext *hwdev)
{
    AVD3D11VADeviceContext *device_hwctx = hwdev->hwctx;

    if (device_hwctx->device) {
        ID3D11Device_Release(device_hwctx->device);
        device_hwctx->device = ((void*)0);
    }

    if (device_hwctx->device_context) {
        ID3D11DeviceContext_Release(device_hwctx->device_context);
        device_hwctx->device_context = ((void*)0);
    }

    if (device_hwctx->video_device) {
        ID3D11VideoDevice_Release(device_hwctx->video_device);
        device_hwctx->video_device = ((void*)0);
    }

    if (device_hwctx->video_context) {
        ID3D11VideoContext_Release(device_hwctx->video_context);
        device_hwctx->video_context = ((void*)0);
    }

    if (device_hwctx->lock == d3d11va_default_lock) {
        CloseHandle(device_hwctx->lock_ctx);
        device_hwctx->lock_ctx = INVALID_HANDLE_VALUE;
        device_hwctx->lock = ((void*)0);
    }
}

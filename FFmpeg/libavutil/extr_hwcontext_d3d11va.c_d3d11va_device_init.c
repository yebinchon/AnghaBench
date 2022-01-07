
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lock_ctx; int video_context; int device_context; int video_device; int device; int unlock; scalar_t__ lock; } ;
struct TYPE_4__ {TYPE_2__* hwctx; } ;
typedef int HRESULT ;
typedef TYPE_1__ AVHWDeviceContext ;
typedef TYPE_2__ AVD3D11VADeviceContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 scalar_t__ CreateMutex (int *,int ,int *) ;
 int EINVAL ;
 scalar_t__ FAILED (int ) ;
 int ID3D11DeviceContext_QueryInterface (int ,int *,void**) ;
 int ID3D11Device_GetImmediateContext (int ,int *) ;
 int IID_ID3D11VideoContext ;
 int IID_ID3D11VideoDevice ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int av_log (int *,int ,char*) ;
 scalar_t__ d3d11va_default_lock ;
 int d3d11va_default_unlock ;

__attribute__((used)) static int d3d11va_device_init(AVHWDeviceContext *hwdev)
{
    AVD3D11VADeviceContext *device_hwctx = hwdev->hwctx;
    HRESULT hr;

    if (!device_hwctx->lock) {
        device_hwctx->lock_ctx = CreateMutex(((void*)0), 0, ((void*)0));
        if (device_hwctx->lock_ctx == INVALID_HANDLE_VALUE) {
            av_log(((void*)0), AV_LOG_ERROR, "Failed to create a mutex\n");
            return AVERROR(EINVAL);
        }
        device_hwctx->lock = d3d11va_default_lock;
        device_hwctx->unlock = d3d11va_default_unlock;
    }

    if (!device_hwctx->device_context) {
        ID3D11Device_GetImmediateContext(device_hwctx->device, &device_hwctx->device_context);
        if (!device_hwctx->device_context)
            return AVERROR_UNKNOWN;
    }

    if (!device_hwctx->video_device) {
        hr = ID3D11DeviceContext_QueryInterface(device_hwctx->device, &IID_ID3D11VideoDevice,
                                                (void **)&device_hwctx->video_device);
        if (FAILED(hr))
            return AVERROR_UNKNOWN;
    }

    if (!device_hwctx->video_context) {
        hr = ID3D11DeviceContext_QueryInterface(device_hwctx->device_context, &IID_ID3D11VideoContext,
                                                (void **)&device_hwctx->video_context);
        if (FAILED(hr))
            return AVERROR_UNKNOWN;
    }

    return 0;
}

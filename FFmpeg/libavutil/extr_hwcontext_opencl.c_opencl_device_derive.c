
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef intptr_t cl_context_properties ;
struct TYPE_13__ {int type; TYPE_2__* hwctx; } ;
struct TYPE_12__ {int * device; int devmgr; int * display; } ;
struct TYPE_11__ {int platform_index; int device_index; int * filter_device; int * enumerate_devices; int * filter_platform; int * enumerate_platforms; int * context; } ;
typedef TYPE_1__ OpenCLDeviceSelector ;
typedef int IDirect3DDevice9 ;
typedef scalar_t__ HRESULT ;
typedef int HANDLE ;
typedef TYPE_2__ AVVAAPIDeviceContext ;
typedef TYPE_3__ AVHWDeviceContext ;
typedef int AVDictionary ;
typedef TYPE_2__ AVDXVA2DeviceContext ;
typedef TYPE_2__ AVD3D11VADeviceContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;




 int AV_LOG_ERROR ;
 intptr_t CL_CONTEXT_ADAPTER_D3D9EX_KHR ;
 intptr_t CL_CONTEXT_D3D11_DEVICE_KHR ;
 intptr_t CL_CONTEXT_INTEROP_USER_SYNC ;
 intptr_t CL_CONTEXT_PLATFORM ;
 intptr_t CL_CONTEXT_VA_API_DISPLAY_INTEL ;
 intptr_t CL_FALSE ;
 int ENOSYS ;
 int FAILED (scalar_t__) ;
 int FALSE ;
 int IDirect3DDeviceManager9_CloseDeviceHandle (int ,int ) ;
 scalar_t__ IDirect3DDeviceManager9_LockDevice (int ,int ,int **,int ) ;
 scalar_t__ IDirect3DDeviceManager9_OpenDeviceHandle (int ,int *) ;
 int IDirect3DDeviceManager9_UnlockDevice (int ,int ,int ) ;
 int SUCCEEDED (scalar_t__) ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_log (TYPE_3__*,int ,char*,unsigned long) ;
 int opencl_device_create_internal (TYPE_3__*,TYPE_1__*,intptr_t*) ;
 int opencl_enumerate_d3d11_devices ;
 int opencl_enumerate_devices ;
 int opencl_enumerate_dxva2_devices ;
 int opencl_enumerate_intel_media_vaapi_devices ;
 int opencl_enumerate_platforms ;
 int opencl_filter_d3d11_platform ;
 int opencl_filter_drm_arm_device ;
 int opencl_filter_drm_arm_platform ;
 int opencl_filter_dxva2_platform ;
 int opencl_filter_gpu_device ;
 int opencl_filter_intel_media_vaapi_device ;
 int opencl_filter_intel_media_vaapi_platform ;
 int opencl_filter_platform ;

__attribute__((used)) static int opencl_device_derive(AVHWDeviceContext *hwdev,
                                AVHWDeviceContext *src_ctx,
                                int flags)
{
    int err;
    switch (src_ctx->type) {
    default:
        err = AVERROR(ENOSYS);
        break;
    }

    return err;
}

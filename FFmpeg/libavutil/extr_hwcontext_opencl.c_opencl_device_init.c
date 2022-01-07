
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cl_int ;
typedef scalar_t__ cl_context_properties ;
typedef int * VADisplay ;
struct TYPE_11__ {TYPE_1__* internal; TYPE_3__* hwctx; } ;
struct TYPE_10__ {int context; int device_id; scalar_t__ command_queue; } ;
struct TYPE_9__ {int beignet_drm_mapping_usable; int qsv_mapping_usable; int dxva2_mapping_usable; int d3d11_mapping_usable; int drm_arm_mapping_usable; int dx9_media_adapter_type; int platform_id; scalar_t__ command_queue; } ;
struct TYPE_8__ {TYPE_2__* priv; } ;
typedef TYPE_2__ OpenCLDeviceContext ;
typedef TYPE_3__ AVOpenCLDeviceContext ;
typedef TYPE_4__ AVHWDeviceContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 int CL_ADAPTER_D3D9EX_KHR ;
 int CL_CONTEXT_PROPERTIES ;
 scalar_t__ CL_CONTEXT_VA_API_DISPLAY_INTEL ;
 int CL_DEVICE_PLATFORM ;
 int CL_FUNC (int ,char*) ;
 int CL_SUCCESS ;
 int EIO ;
 int ENOMEM ;
 int av_free (scalar_t__*) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 scalar_t__* av_malloc (size_t) ;
 scalar_t__ clCreateCommandQueue (int ,int ,int ,int *) ;
 int clCreateFromD3D11Texture2DKHR ;
 int clCreateFromDX9MediaSurfaceKHR ;
 int clCreateFromVA_APIMediaSurfaceINTEL ;
 int clCreateImageFromFdINTEL ;
 int clEnqueueAcquireD3D11ObjectsKHR ;
 int clEnqueueAcquireDX9MediaSurfacesKHR ;
 int clEnqueueAcquireVA_APIMediaSurfacesINTEL ;
 int clEnqueueReleaseD3D11ObjectsKHR ;
 int clEnqueueReleaseDX9MediaSurfacesKHR ;
 int clEnqueueReleaseVA_APIMediaSurfacesINTEL ;
 int clGetContextInfo (int ,int ,size_t,scalar_t__*,size_t*) ;
 int clGetDeviceInfo (int ,int ,int,int *,int *) ;
 int clRetainCommandQueue (scalar_t__) ;
 int opencl_check_extension (TYPE_4__*,char const*) ;
 int vaDisplayIsValid (int *) ;

__attribute__((used)) static int opencl_device_init(AVHWDeviceContext *hwdev)
{
    AVOpenCLDeviceContext *hwctx = hwdev->hwctx;
    OpenCLDeviceContext *priv = hwdev->internal->priv;
    cl_int cle;

    if (hwctx->command_queue) {
        cle = clRetainCommandQueue(hwctx->command_queue);
        if (cle != CL_SUCCESS) {
            av_log(hwdev, AV_LOG_ERROR, "Failed to retain external "
                   "command queue: %d.\n", cle);
            return AVERROR(EIO);
        }
        priv->command_queue = hwctx->command_queue;
    } else {
        priv->command_queue = clCreateCommandQueue(hwctx->context,
                                                   hwctx->device_id,
                                                   0, &cle);
        if (!priv->command_queue) {
            av_log(hwdev, AV_LOG_ERROR, "Failed to create internal "
                   "command queue: %d.\n", cle);
            return AVERROR(EIO);
        }
    }

    cle = clGetDeviceInfo(hwctx->device_id, CL_DEVICE_PLATFORM,
                          sizeof(priv->platform_id), &priv->platform_id,
                          ((void*)0));
    if (cle != CL_SUCCESS) {
        av_log(hwdev, AV_LOG_ERROR, "Failed to determine the OpenCL "
               "platform containing the device.\n");
        return AVERROR(EIO);
    }
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ cl_int ;
struct TYPE_6__ {TYPE_1__* hwctx; } ;
struct TYPE_5__ {int context; } ;
typedef TYPE_1__ AVOpenCLDeviceContext ;
typedef TYPE_2__ AVHWDeviceContext ;


 int AV_LOG_ERROR ;
 scalar_t__ CL_SUCCESS ;
 int av_log (TYPE_2__*,int ,char*,scalar_t__) ;
 scalar_t__ clReleaseContext (int ) ;

__attribute__((used)) static void opencl_device_free(AVHWDeviceContext *hwdev)
{
    AVOpenCLDeviceContext *hwctx = hwdev->hwctx;
    cl_int cle;

    cle = clReleaseContext(hwctx->context);
    if (cle != CL_SUCCESS) {
        av_log(hwdev, AV_LOG_ERROR, "Failed to release OpenCL "
               "context: %d.\n", cle);
    }
}

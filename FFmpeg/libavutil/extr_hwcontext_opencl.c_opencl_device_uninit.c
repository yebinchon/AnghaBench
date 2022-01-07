
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ cl_int ;
struct TYPE_8__ {TYPE_1__* internal; } ;
struct TYPE_7__ {int * command_queue; } ;
struct TYPE_6__ {TYPE_2__* priv; } ;
typedef TYPE_2__ OpenCLDeviceContext ;
typedef TYPE_3__ AVHWDeviceContext ;


 int AV_LOG_ERROR ;
 scalar_t__ CL_SUCCESS ;
 int av_log (TYPE_3__*,int ,char*,scalar_t__) ;
 scalar_t__ clReleaseCommandQueue (int *) ;

__attribute__((used)) static void opencl_device_uninit(AVHWDeviceContext *hwdev)
{
    OpenCLDeviceContext *priv = hwdev->internal->priv;
    cl_int cle;

    if (priv->command_queue) {
        cle = clReleaseCommandQueue(priv->command_queue);
        if (cle != CL_SUCCESS) {
            av_log(hwdev, AV_LOG_ERROR, "Failed to release internal "
                   "command queue reference: %d.\n", cle);
        }
        priv->command_queue = ((void*)0);
    }
}

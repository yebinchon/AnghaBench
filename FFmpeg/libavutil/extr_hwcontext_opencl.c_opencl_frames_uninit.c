
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cl_int ;
struct TYPE_11__ {TYPE_1__* internal; } ;
struct TYPE_10__ {int nb_planes; int * planes; } ;
struct TYPE_9__ {int nb_mapped_frames; int * command_queue; TYPE_3__* mapped_frames; } ;
struct TYPE_8__ {TYPE_2__* priv; } ;
typedef TYPE_2__ OpenCLFramesContext ;
typedef TYPE_3__ AVOpenCLFrameDescriptor ;
typedef TYPE_4__ AVHWFramesContext ;


 int AV_LOG_ERROR ;
 int CL_SUCCESS ;
 int av_freep (TYPE_3__**) ;
 int av_log (TYPE_4__*,int ,char*,int,...) ;
 int clReleaseCommandQueue (int *) ;
 int clReleaseMemObject (int ) ;

__attribute__((used)) static void opencl_frames_uninit(AVHWFramesContext *hwfc)
{
    OpenCLFramesContext *priv = hwfc->internal->priv;
    cl_int cle;
    if (priv->command_queue) {
        cle = clReleaseCommandQueue(priv->command_queue);
        if (cle != CL_SUCCESS) {
            av_log(hwfc, AV_LOG_ERROR, "Failed to release frame "
                   "command queue: %d.\n", cle);
        }
        priv->command_queue = ((void*)0);
    }
}

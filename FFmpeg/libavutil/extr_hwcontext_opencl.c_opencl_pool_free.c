
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ cl_int ;
struct TYPE_3__ {int nb_planes; int * planes; } ;
typedef TYPE_1__ AVOpenCLFrameDescriptor ;
typedef int AVHWFramesContext ;


 int AV_LOG_ERROR ;
 scalar_t__ CL_SUCCESS ;
 int av_free (TYPE_1__*) ;
 int av_log (int *,int ,char*,int,scalar_t__) ;
 scalar_t__ clReleaseMemObject (int ) ;

__attribute__((used)) static void opencl_pool_free(void *opaque, uint8_t *data)
{
    AVHWFramesContext *hwfc = opaque;
    AVOpenCLFrameDescriptor *desc = (AVOpenCLFrameDescriptor*)data;
    cl_int cle;
    int p;

    for (p = 0; p < desc->nb_planes; p++) {
        cle = clReleaseMemObject(desc->planes[p]);
        if (cle != CL_SUCCESS) {
            av_log(hwfc, AV_LOG_ERROR, "Failed to release plane %d: "
                   "%d.\n", p, cle);
        }
    }

    av_free(desc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int cl_mem ;
typedef scalar_t__ cl_int ;
typedef int cl_event ;
struct TYPE_17__ {TYPE_1__* internal; } ;
struct TYPE_16__ {TYPE_2__* source; TYPE_3__* priv; } ;
struct TYPE_15__ {int command_queue; } ;
struct TYPE_14__ {int * address; } ;
struct TYPE_13__ {scalar_t__* data; } ;
struct TYPE_12__ {TYPE_4__* priv; } ;
typedef TYPE_3__ OpenCLMapping ;
typedef TYPE_4__ OpenCLFramesContext ;
typedef TYPE_5__ HWMapDescriptor ;
typedef TYPE_6__ AVHWFramesContext ;


 int AV_LOG_ERROR ;
 int AV_NUM_DATA_POINTERS ;
 scalar_t__ CL_SUCCESS ;
 int FF_ARRAY_ELEMS (int *) ;
 int av_free (TYPE_3__*) ;
 int av_log (TYPE_6__*,int ,char*,int,scalar_t__) ;
 scalar_t__ clEnqueueUnmapMemObject (int ,int ,int ,int ,int *,int *) ;
 int opencl_wait_events (TYPE_6__*,int *,int) ;

__attribute__((used)) static void opencl_unmap_frame(AVHWFramesContext *hwfc,
                               HWMapDescriptor *hwmap)
{
    OpenCLFramesContext *priv = hwfc->internal->priv;
    OpenCLMapping *map = hwmap->priv;
    cl_event events[AV_NUM_DATA_POINTERS];
    int p, e;
    cl_int cle;

    for (p = e = 0; p < FF_ARRAY_ELEMS(map->address); p++) {
        if (!map->address[p])
            break;

        cle = clEnqueueUnmapMemObject(priv->command_queue,
                                      (cl_mem)hwmap->source->data[p],
                                      map->address[p],
                                      0, ((void*)0), &events[e]);
        if (cle != CL_SUCCESS) {
            av_log(hwfc, AV_LOG_ERROR, "Failed to unmap OpenCL "
                   "image plane %d: %d.\n", p, cle);
        }
        ++e;
    }

    opencl_wait_events(hwfc, events, e);

    av_free(map);
}

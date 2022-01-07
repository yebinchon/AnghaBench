
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int cl_mem ;
typedef scalar_t__ cl_int ;
typedef int cl_image_format ;
struct TYPE_13__ {size_t image_width; size_t image_height; } ;
typedef TYPE_2__ cl_image_desc ;
typedef int cl_event ;
struct TYPE_16__ {scalar_t__ format; scalar_t__* data; int * linesize; int height; int width; } ;
struct TYPE_15__ {scalar_t__ sw_format; TYPE_1__* internal; } ;
struct TYPE_14__ {int command_queue; } ;
struct TYPE_12__ {TYPE_3__* priv; } ;
typedef TYPE_3__ OpenCLFramesContext ;
typedef TYPE_4__ AVHWFramesContext ;
typedef TYPE_5__ AVFrame ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_NUM_DATA_POINTERS ;
 int CL_FALSE ;
 scalar_t__ CL_SUCCESS ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int av_log (TYPE_4__*,int ,char*,int,...) ;
 scalar_t__ clEnqueueWriteImage (int ,int ,int ,size_t*,size_t*,int ,int ,scalar_t__,int ,int *,int *) ;
 int opencl_get_plane_format (scalar_t__,int,int ,int ,int *,TYPE_2__*) ;
 int opencl_wait_events (TYPE_4__*,int *,int) ;

__attribute__((used)) static int opencl_transfer_data_to(AVHWFramesContext *hwfc,
                                   AVFrame *dst, const AVFrame *src)
{
    OpenCLFramesContext *priv = hwfc->internal->priv;
    cl_image_format image_format;
    cl_image_desc image_desc;
    cl_int cle;
    size_t origin[3] = { 0, 0, 0 };
    size_t region[3];
    cl_event events[AV_NUM_DATA_POINTERS];
    int err, p;

    if (src->format != hwfc->sw_format)
        return AVERROR(EINVAL);

    for (p = 0;; p++) {
        err = opencl_get_plane_format(hwfc->sw_format, p,
                                      src->width, src->height,
                                      &image_format, &image_desc);
        if (err < 0) {
            if (err == AVERROR(ENOENT))
                err = 0;
            break;
        }

        if (!src->data[p]) {
            av_log(hwfc, AV_LOG_ERROR, "Plane %d missing on "
                   "source frame for transfer.\n", p);
            err = AVERROR(EINVAL);
            break;
        }

        region[0] = image_desc.image_width;
        region[1] = image_desc.image_height;
        region[2] = 1;

        cle = clEnqueueWriteImage(priv->command_queue,
                                  (cl_mem)dst->data[p],
                                  CL_FALSE, origin, region,
                                  src->linesize[p], 0,
                                  src->data[p],
                                  0, ((void*)0), &events[p]);
        if (cle != CL_SUCCESS) {
            av_log(hwfc, AV_LOG_ERROR, "Failed to enqueue write of "
                   "OpenCL image plane %d: %d.\n", p, cle);
            err = AVERROR(EIO);
            break;
        }
    }

    opencl_wait_events(hwfc, events, p);

    return err;
}

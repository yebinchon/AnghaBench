
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ cl_mem ;
typedef int cl_int ;
typedef int cl_image_format ;
struct TYPE_13__ {scalar_t__ image_row_pitch; } ;
typedef TYPE_2__ cl_image_desc ;
struct TYPE_16__ {int height; int width; int sw_format; TYPE_1__* device_ctx; } ;
struct TYPE_15__ {int context; } ;
struct TYPE_14__ {int nb_planes; scalar_t__* planes; } ;
struct TYPE_12__ {TYPE_4__* hwctx; } ;
typedef TYPE_3__ AVOpenCLFrameDescriptor ;
typedef TYPE_4__ AVOpenCLDeviceContext ;
typedef TYPE_5__ AVHWFramesContext ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int CL_MEM_READ_WRITE ;
 int ENOENT ;
 int * av_buffer_create (int *,int,int *,TYPE_5__*,int ) ;
 int av_free (TYPE_3__*) ;
 int av_log (TYPE_5__*,int ,char*,int,int ) ;
 TYPE_3__* av_mallocz (int) ;
 scalar_t__ clCreateImage (int ,int ,int *,TYPE_2__*,int *,int *) ;
 int clReleaseMemObject (scalar_t__) ;
 int opencl_get_plane_format (int ,int,int ,int ,int *,TYPE_2__*) ;
 int opencl_pool_free ;

__attribute__((used)) static AVBufferRef *opencl_pool_alloc(void *opaque, int size)
{
    AVHWFramesContext *hwfc = opaque;
    AVOpenCLDeviceContext *hwctx = hwfc->device_ctx->hwctx;
    AVOpenCLFrameDescriptor *desc;
    cl_int cle;
    cl_mem image;
    cl_image_format image_format;
    cl_image_desc image_desc;
    int err, p;
    AVBufferRef *ref;

    desc = av_mallocz(sizeof(*desc));
    if (!desc)
        return ((void*)0);

    for (p = 0;; p++) {
        err = opencl_get_plane_format(hwfc->sw_format, p,
                                      hwfc->width, hwfc->height,
                                      &image_format, &image_desc);
        if (err == AVERROR(ENOENT))
            break;
        if (err < 0)
            goto fail;



        image_desc.image_row_pitch = 0;

        image = clCreateImage(hwctx->context, CL_MEM_READ_WRITE,
                              &image_format, &image_desc, ((void*)0), &cle);
        if (!image) {
            av_log(hwfc, AV_LOG_ERROR, "Failed to create image for "
                   "plane %d: %d.\n", p, cle);
            goto fail;
        }

        desc->planes[p] = image;
    }

    desc->nb_planes = p;

    ref = av_buffer_create((uint8_t*)desc, sizeof(*desc),
                           &opencl_pool_free, hwfc, 0);
    if (!ref)
        goto fail;

    return ref;

fail:
    for (p = 0; desc->planes[p]; p++)
        clReleaseMemObject(desc->planes[p]);
    av_free(desc);
    return ((void*)0);
}

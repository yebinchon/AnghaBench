
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type ;
typedef scalar_t__ cl_mem_object_type ;
typedef scalar_t__ cl_mem ;
typedef scalar_t__ cl_int ;
struct TYPE_3__ {scalar_t__ format; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;
typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_OPENCL ;
 int CL_IMAGE_HEIGHT ;
 int CL_IMAGE_WIDTH ;
 scalar_t__ CL_MEM_OBJECT_IMAGE2D ;
 int CL_MEM_TYPE ;
 scalar_t__ CL_SUCCESS ;
 int EINVAL ;
 size_t FFALIGN (size_t,int) ;
 int av_get_pix_fmt_name (scalar_t__) ;
 int av_log (int *,int ,char*,int,...) ;
 scalar_t__ clGetImageInfo (scalar_t__,int ,int,size_t*,int *) ;
 scalar_t__ clGetMemObjectInfo (scalar_t__,int ,int,scalar_t__*,int *) ;

int ff_opencl_filter_work_size_from_image(AVFilterContext *avctx,
                                          size_t *work_size,
                                          AVFrame *frame, int plane,
                                          int block_alignment)
{
    cl_mem image;
    cl_mem_object_type type;
    size_t width, height;
    cl_int cle;

    if (frame->format != AV_PIX_FMT_OPENCL) {
        av_log(avctx, AV_LOG_ERROR, "Invalid frame format %s, "
               "opencl required.\n", av_get_pix_fmt_name(frame->format));
        return AVERROR(EINVAL);
    }

    image = (cl_mem)frame->data[plane];
    if (!image) {
        av_log(avctx, AV_LOG_ERROR, "Plane %d required but not set.\n",
               plane);
        return AVERROR(EINVAL);
    }

    cle = clGetMemObjectInfo(image, CL_MEM_TYPE, sizeof(type),
                             &type, ((void*)0));
    if (cle != CL_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to query object type of "
               "plane %d: %d.\n", plane, cle);
        return AVERROR_UNKNOWN;
    }
    if (type != CL_MEM_OBJECT_IMAGE2D) {
        av_log(avctx, AV_LOG_ERROR, "Plane %d is not a 2D image.\n",
               plane);
        return AVERROR(EINVAL);
    }

    cle = clGetImageInfo(image, CL_IMAGE_WIDTH, sizeof(size_t),
                         &width, ((void*)0));
    if (cle != CL_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to query plane %d width: %d.\n",
               plane, cle);
        return AVERROR_UNKNOWN;
    }

    cle = clGetImageInfo(image, CL_IMAGE_HEIGHT, sizeof(size_t),
                         &height, ((void*)0));
    if (cle != CL_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to query plane %d height: %d.\n",
               plane, cle);
        return AVERROR_UNKNOWN;
    }

    if (block_alignment) {
        width = FFALIGN(width, block_alignment);
        height = FFALIGN(height, block_alignment);
    }

    work_size[0] = width;
    work_size[1] = height;

    return 0;
}

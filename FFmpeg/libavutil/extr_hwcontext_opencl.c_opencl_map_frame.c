
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int cl_mem ;
typedef int cl_map_flags ;
typedef int cl_int ;
typedef int cl_image_format ;
struct TYPE_19__ {size_t image_width; size_t image_height; } ;
typedef TYPE_2__ cl_image_desc ;
typedef int cl_event ;
struct TYPE_23__ {scalar_t__ format; scalar_t__* data; int height; int width; int hw_frames_ctx; } ;
struct TYPE_22__ {scalar_t__ sw_format; TYPE_1__* internal; } ;
struct TYPE_21__ {int command_queue; } ;
struct TYPE_20__ {scalar_t__* address; } ;
struct TYPE_18__ {TYPE_4__* priv; } ;
typedef TYPE_3__ OpenCLMapping ;
typedef TYPE_4__ OpenCLFramesContext ;
typedef TYPE_5__ AVHWFramesContext ;
typedef TYPE_6__ AVFrame ;


 int AVERROR (int ) ;
 int AV_HWFRAME_MAP_OVERWRITE ;
 int AV_HWFRAME_MAP_READ ;
 int AV_HWFRAME_MAP_WRITE ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_NUM_DATA_POINTERS ;
 int CL_FALSE ;
 int CL_MAP_READ ;
 int CL_MAP_WRITE ;
 int CL_MAP_WRITE_INVALIDATE_REGION ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int av_freep (TYPE_3__**) ;
 int av_log (TYPE_5__*,int ,char*,int,scalar_t__,...) ;
 TYPE_3__* av_mallocz (int) ;
 scalar_t__ clEnqueueMapImage (int ,int ,int ,int ,size_t*,size_t*,size_t*,int *,int ,int *,int *,int *) ;
 int clEnqueueUnmapMemObject (int ,int ,scalar_t__,int ,int *,int *) ;
 int ff_hwframe_map_create (int ,TYPE_6__*,TYPE_6__ const*,int *,TYPE_3__*) ;
 int opencl_get_plane_format (scalar_t__,int,int ,int ,int *,TYPE_2__*) ;
 int opencl_unmap_frame ;
 int opencl_wait_events (TYPE_5__*,int *,int) ;

__attribute__((used)) static int opencl_map_frame(AVHWFramesContext *hwfc, AVFrame *dst,
                            const AVFrame *src, int flags)
{
    OpenCLFramesContext *priv = hwfc->internal->priv;
    cl_map_flags map_flags;
    cl_image_format image_format;
    cl_image_desc image_desc;
    cl_int cle;
    OpenCLMapping *map;
    size_t origin[3] = { 0, 0, 0 };
    size_t region[3];
    size_t row_pitch;
    cl_event events[AV_NUM_DATA_POINTERS];
    int err, p;

    av_assert0(hwfc->sw_format == dst->format);

    if (flags & AV_HWFRAME_MAP_OVERWRITE &&
        !(flags & AV_HWFRAME_MAP_READ)) {


        map_flags = CL_MAP_WRITE_INVALIDATE_REGION;
    } else {
        map_flags = 0;
        if (flags & AV_HWFRAME_MAP_READ)
            map_flags |= CL_MAP_READ;
        if (flags & AV_HWFRAME_MAP_WRITE)
            map_flags |= CL_MAP_WRITE;
    }

    map = av_mallocz(sizeof(*map));
    if (!map)
        return AVERROR(ENOMEM);

    for (p = 0;; p++) {
        err = opencl_get_plane_format(hwfc->sw_format, p,
                                      src->width, src->height,
                                      &image_format, &image_desc);
        if (err == AVERROR(ENOENT))
            break;
        if (err < 0)
            goto fail;

        region[0] = image_desc.image_width;
        region[1] = image_desc.image_height;
        region[2] = 1;

        map->address[p] =
            clEnqueueMapImage(priv->command_queue,
                              (cl_mem)src->data[p],
                              CL_FALSE, map_flags, origin, region,
                              &row_pitch, ((void*)0), 0, ((void*)0),
                              &events[p], &cle);
        if (!map->address[p]) {
            av_log(hwfc, AV_LOG_ERROR, "Failed to map OpenCL "
                   "image plane %d: %d.\n", p, cle);
            err = AVERROR(EIO);
            goto fail;
        }

        dst->data[p] = map->address[p];

        av_log(hwfc, AV_LOG_DEBUG, "Map plane %d (%p -> %p).\n",
               p, src->data[p], dst->data[p]);
    }

    err = opencl_wait_events(hwfc, events, p);
    if (err < 0)
        goto fail;

    err = ff_hwframe_map_create(src->hw_frames_ctx, dst, src,
                                &opencl_unmap_frame, map);
    if (err < 0)
        goto fail;

    dst->width = src->width;
    dst->height = src->height;

    return 0;

fail:
    for (p = 0; p < AV_NUM_DATA_POINTERS; p++) {
        if (!map->address[p])
            break;
        clEnqueueUnmapMemObject(priv->command_queue,
                                (cl_mem)src->data[p],
                                map->address[p],
                                0, ((void*)0), &events[p]);
    }
    if (p > 0)
        opencl_wait_events(hwfc, events, p);
    av_freep(&map);
    return err;
}

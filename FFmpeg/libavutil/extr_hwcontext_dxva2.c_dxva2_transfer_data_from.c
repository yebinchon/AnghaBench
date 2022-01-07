
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_12__ {int height; int width; scalar_t__ data; int * linesize; scalar_t__ format; } ;
struct TYPE_11__ {scalar_t__ sw_format; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int AV_HWFRAME_MAP_READ ;
 int ENOMEM ;
 int ENOSYS ;
 TYPE_2__* av_frame_alloc () ;
 int av_frame_free (TYPE_2__**) ;
 int av_image_copy_uc_from (scalar_t__,int *,int const**,int *,scalar_t__,int ,int ) ;
 int dxva2_map_frame (TYPE_1__*,TYPE_2__*,TYPE_2__ const*,int ) ;

__attribute__((used)) static int dxva2_transfer_data_from(AVHWFramesContext *ctx, AVFrame *dst,
                                    const AVFrame *src)
{
    AVFrame *map;
    ptrdiff_t src_linesize[4], dst_linesize[4];
    int ret, i;

    if (dst->format != ctx->sw_format)
        return AVERROR(ENOSYS);

    map = av_frame_alloc();
    if (!map)
        return AVERROR(ENOMEM);
    map->format = dst->format;

    ret = dxva2_map_frame(ctx, map, src, AV_HWFRAME_MAP_READ);
    if (ret < 0)
        goto fail;

    for (i = 0; i < 4; i++) {
        dst_linesize[i] = dst->linesize[i];
        src_linesize[i] = map->linesize[i];
    }
    av_image_copy_uc_from(dst->data, dst_linesize, (const uint8_t **)map->data, src_linesize,
                          ctx->sw_format, src->width, src->height);
fail:
    av_frame_free(&map);
    return ret;
}

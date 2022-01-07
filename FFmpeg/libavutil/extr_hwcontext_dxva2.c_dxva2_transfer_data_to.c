
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int height; int width; int linesize; scalar_t__ data; int format; } ;
struct TYPE_11__ {int sw_format; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int AV_HWFRAME_MAP_OVERWRITE ;
 int AV_HWFRAME_MAP_WRITE ;
 int ENOMEM ;
 int ENOSYS ;
 TYPE_2__* av_frame_alloc () ;
 int av_frame_free (TYPE_2__**) ;
 int av_image_copy (scalar_t__,int ,int const**,int ,int ,int ,int ) ;
 int dxva2_map_frame (TYPE_1__*,TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static int dxva2_transfer_data_to(AVHWFramesContext *ctx, AVFrame *dst,
                                  const AVFrame *src)
{
    AVFrame *map;
    int ret;

    if (src->format != ctx->sw_format)
        return AVERROR(ENOSYS);

    map = av_frame_alloc();
    if (!map)
        return AVERROR(ENOMEM);
    map->format = dst->format;

    ret = dxva2_map_frame(ctx, map, dst, AV_HWFRAME_MAP_WRITE | AV_HWFRAME_MAP_OVERWRITE);
    if (ret < 0)
        goto fail;

    av_image_copy(map->data, map->linesize, (const uint8_t **)src->data, src->linesize,
                  ctx->sw_format, src->width, src->height);

fail:
    av_frame_free(&map);
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ width; scalar_t__ height; int format; } ;
struct TYPE_13__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int AV_HWFRAME_MAP_OVERWRITE ;
 int AV_HWFRAME_MAP_WRITE ;
 int EINVAL ;
 int ENOMEM ;
 TYPE_2__* av_frame_alloc () ;
 int av_frame_copy (TYPE_2__*,TYPE_2__ const*) ;
 int av_frame_free (TYPE_2__**) ;
 int vaapi_map_frame (TYPE_1__*,TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static int vaapi_transfer_data_to(AVHWFramesContext *hwfc,
                                  AVFrame *dst, const AVFrame *src)
{
    AVFrame *map;
    int err;

    if (src->width > hwfc->width || src->height > hwfc->height)
        return AVERROR(EINVAL);

    map = av_frame_alloc();
    if (!map)
        return AVERROR(ENOMEM);
    map->format = src->format;

    err = vaapi_map_frame(hwfc, map, dst, AV_HWFRAME_MAP_WRITE | AV_HWFRAME_MAP_OVERWRITE);
    if (err)
        goto fail;

    map->width = src->width;
    map->height = src->height;

    err = av_frame_copy(map, src);
    if (err)
        goto fail;

    err = 0;
fail:
    av_frame_free(&map);
    return err;
}

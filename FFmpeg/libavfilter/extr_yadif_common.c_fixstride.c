
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int height; int width; int format; int linesize; scalar_t__ data; } ;
typedef TYPE_1__ AVFrame ;
typedef int AVFilterLink ;


 int av_frame_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_frame_free (TYPE_1__**) ;
 int av_frame_move_ref (TYPE_1__*,TYPE_1__*) ;
 int av_frame_unref (TYPE_1__*) ;
 int av_image_copy (scalar_t__,int ,int const**,int ,int ,int ,int ) ;
 TYPE_1__* ff_default_get_video_buffer (int *,int ,int ) ;

__attribute__((used)) static void fixstride(AVFilterLink *link, AVFrame *f)
{
    AVFrame *dst = ff_default_get_video_buffer(link, f->width, f->height);
    if(!dst)
        return;
    av_frame_copy_props(dst, f);
    av_image_copy(dst->data, dst->linesize,
                  (const uint8_t **)f->data, f->linesize,
                  dst->format, dst->width, dst->height);
    av_frame_unref(f);
    av_frame_move_ref(f, dst);
    av_frame_free(&dst);
}

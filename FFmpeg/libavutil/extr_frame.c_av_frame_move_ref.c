
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ width; scalar_t__ height; scalar_t__ channels; scalar_t__ extended_data; scalar_t__ data; } ;
typedef TYPE_1__ AVFrame ;


 int av_assert1 (int) ;
 int get_frame_defaults (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void av_frame_move_ref(AVFrame *dst, AVFrame *src)
{
    av_assert1(dst->width == 0 && dst->height == 0);
    av_assert1(dst->channels == 0);

    *dst = *src;
    if (src->extended_data == src->data)
        dst->extended_data = dst->data;
    memset(src, 0, sizeof(*src));
    get_frame_defaults(src);
}

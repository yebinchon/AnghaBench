
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int nb_samples; struct TYPE_7__* next; int pts; } ;
struct TYPE_6__ {int nb_samples; int nb_frames; TYPE_2__* end; TYPE_2__* list; } ;
typedef TYPE_1__ FrameList ;
typedef TYPE_2__ FrameInfo ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_assert0 (TYPE_2__*) ;
 TYPE_2__* av_malloc (int) ;

__attribute__((used)) static int frame_list_add_frame(FrameList *frame_list, int nb_samples, int64_t pts)
{
    FrameInfo *info = av_malloc(sizeof(*info));
    if (!info)
        return AVERROR(ENOMEM);
    info->nb_samples = nb_samples;
    info->pts = pts;
    info->next = ((void*)0);

    if (!frame_list->list) {
        frame_list->list = info;
        frame_list->end = info;
    } else {
        av_assert0(frame_list->end);
        frame_list->end->next = info;
        frame_list->end = info;
    }
    frame_list->nb_frames++;
    frame_list->nb_samples += nb_samples;

    return 0;
}

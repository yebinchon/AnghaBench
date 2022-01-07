
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nb_samples; int pts; struct TYPE_8__* next; } ;
struct TYPE_7__ {int nb_samples; int nb_frames; int * end; TYPE_2__* list; } ;
typedef TYPE_1__ FrameList ;
typedef TYPE_2__ FrameInfo ;


 int av_assert0 (TYPE_2__*) ;
 int av_free (TYPE_2__*) ;
 int frame_list_clear (TYPE_1__*) ;

__attribute__((used)) static void frame_list_remove_samples(FrameList *frame_list, int nb_samples)
{
    if (nb_samples >= frame_list->nb_samples) {
        frame_list_clear(frame_list);
    } else {
        int samples = nb_samples;
        while (samples > 0) {
            FrameInfo *info = frame_list->list;
            av_assert0(info);
            if (info->nb_samples <= samples) {
                samples -= info->nb_samples;
                frame_list->list = info->next;
                if (!frame_list->list)
                    frame_list->end = ((void*)0);
                frame_list->nb_frames--;
                frame_list->nb_samples -= info->nb_samples;
                av_free(info);
            } else {
                info->nb_samples -= samples;
                info->pts += samples;
                frame_list->nb_samples -= samples;
                samples = 0;
            }
        }
    }
}

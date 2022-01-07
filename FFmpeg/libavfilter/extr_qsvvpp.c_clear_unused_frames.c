
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; int frame; TYPE_2__* surface; } ;
struct TYPE_5__ {int Locked; } ;
struct TYPE_6__ {TYPE_1__ Data; } ;
typedef TYPE_3__ QSVFrame ;


 int av_frame_free (int *) ;

__attribute__((used)) static void clear_unused_frames(QSVFrame *list)
{
    while (list) {
        if (list->surface && !list->surface->Data.Locked) {
            list->surface = ((void*)0);
            av_frame_free(&list->frame);
        }
        list = list->next;
    }
}

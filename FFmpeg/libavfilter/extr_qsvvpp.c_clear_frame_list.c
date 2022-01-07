
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame; struct TYPE_4__* next; } ;
typedef TYPE_1__ QSVFrame ;


 int av_frame_free (int *) ;
 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void clear_frame_list(QSVFrame **list)
{
    while (*list) {
        QSVFrame *frame;

        frame = *list;
        *list = (*list)->next;
        av_frame_free(&frame->frame);
        av_freep(&frame);
    }
}

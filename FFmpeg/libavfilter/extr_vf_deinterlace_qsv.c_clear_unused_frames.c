
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* work_frames; } ;
struct TYPE_6__ {int Locked; } ;
struct TYPE_7__ {TYPE_1__ Data; } ;
struct TYPE_8__ {struct TYPE_8__* next; scalar_t__ used; int frame; TYPE_2__ surface; } ;
typedef TYPE_3__ QSVFrame ;
typedef TYPE_4__ QSVDeintContext ;


 int av_frame_free (int *) ;

__attribute__((used)) static void clear_unused_frames(QSVDeintContext *s)
{
    QSVFrame *cur = s->work_frames;
    while (cur) {
        if (!cur->surface.Data.Locked) {
            av_frame_free(&cur->frame);
            cur->used = 0;
        }
        cur = cur->next;
    }
}

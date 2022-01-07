
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mfxFrameSurface1 ;
struct TYPE_6__ {TYPE_1__* work_frames; } ;
struct TYPE_5__ {struct TYPE_5__* next; int surface; } ;
typedef TYPE_1__ QSVFrame ;
typedef TYPE_2__ QSVContext ;



__attribute__((used)) static QSVFrame *find_frame(QSVContext *q, mfxFrameSurface1 *surf)
{
    QSVFrame *cur = q->work_frames;
    while (cur) {
        if (surf == &cur->surface)
            return cur;
        cur = cur->next;
    }
    return ((void*)0);
}

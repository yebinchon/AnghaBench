
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nfile; TYPE_2__* tail; TYPE_2__* head; } ;
typedef TYPE_1__ Wal ;
struct TYPE_7__ {struct TYPE_7__* path; struct TYPE_7__* next; int refs; } ;
typedef TYPE_2__ File ;


 int free (TYPE_2__*) ;
 int unlink (TYPE_2__*) ;

void
walgc(Wal *w)
{
    File *f;

    while (w->head && !w->head->refs) {
        f = w->head;
        w->head = f->next;
        if (w->tail == f) {
            w->tail = f->next;
        }

        w->nfile--;
        unlink(f->path);
        free(f->path);
        free(f);
    }
}

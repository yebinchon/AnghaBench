
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_1__ PullupField ;
typedef int PullupContext ;


 scalar_t__ alloc_metrics (int *,TYPE_1__*) ;
 int av_free (TYPE_1__*) ;
 void* av_mallocz (int) ;
 int free_field_queue (TYPE_1__*) ;

__attribute__((used)) static PullupField *make_field_queue(PullupContext *s, int len)
{
    PullupField *head, *f;

    f = head = av_mallocz(sizeof(*head));
    if (!f)
        return ((void*)0);

    if (alloc_metrics(s, f) < 0) {
        av_free(f);
        return ((void*)0);
    }

    for (; len > 0; len--) {
        f->next = av_mallocz(sizeof(*f->next));
        if (!f->next) {
            free_field_queue(head);
            return ((void*)0);
        }

        f->next->prev = f;
        f = f->next;
        if (alloc_metrics(s, f) < 0) {
            free_field_queue(head);
            return ((void*)0);
        }
    }

    f->next = head;
    head->prev = f;

    return head;
}

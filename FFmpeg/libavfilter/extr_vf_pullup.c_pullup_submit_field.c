
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* head; TYPE_1__* last; TYPE_1__* first; int var; int comb; int diff; } ;
struct TYPE_8__ {int parity; struct TYPE_8__* next; int vars; struct TYPE_8__* prev; int combs; int diffs; scalar_t__ affinity; scalar_t__ breaks; scalar_t__ flags; int buffer; } ;
typedef TYPE_1__ PullupField ;
typedef TYPE_2__ PullupContext ;
typedef int PullupBuffer ;


 scalar_t__ check_field_queue (TYPE_2__*) ;
 int compute_metric (TYPE_2__*,int ,TYPE_1__*,int,TYPE_1__*,int,int ) ;
 int emms_c () ;
 int pullup_lock_buffer (int *,int) ;

__attribute__((used)) static void pullup_submit_field(PullupContext *s, PullupBuffer *b, int parity)
{
    PullupField *f;


    if (check_field_queue(s) < 0)
        return;


    if (s->last && s->last->parity == parity)
        return;

    f = s->head;
    f->parity = parity;
    f->buffer = pullup_lock_buffer(b, parity);
    f->flags = 0;
    f->breaks = 0;
    f->affinity = 0;

    compute_metric(s, f->diffs, f, parity, f->prev->prev, parity, s->diff);
    compute_metric(s, f->combs, parity ? f->prev : f, 0, parity ? f : f->prev, 1, s->comb);
    compute_metric(s, f->vars, f, parity, f, -1, s->var);
    emms_c();


    if (!s->first)
        s->first = s->head;

    s->last = s->head;
    s->head = s->head->next;
}

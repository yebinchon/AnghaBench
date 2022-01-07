
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ strict_breaks; int strict_pairs; int last; TYPE_2__* first; } ;
struct TYPE_12__ {int affinity; int breaks; TYPE_1__* prev; struct TYPE_12__* next; } ;
struct TYPE_11__ {int breaks; } ;
typedef TYPE_2__ PullupField ;
typedef TYPE_3__ PullupContext ;


 int BREAK_LEFT ;
 int BREAK_RIGHT ;
 int compute_affinity (TYPE_3__*,TYPE_2__*) ;
 int compute_breaks (TYPE_3__*,TYPE_2__*) ;
 int find_first_break (TYPE_2__*,int) ;
 int queue_length (TYPE_2__*,int ) ;

__attribute__((used)) static int decide_frame_length(PullupContext *s)
{
    PullupField *f0 = s->first;
    PullupField *f1 = f0->next;
    PullupField *f2 = f1->next;
    PullupField *f;
    int i, l, n;

    if (queue_length(s->first, s->last) < 4)
        return 0;

    f = s->first;
    n = queue_length(f, s->last);
    for (i = 0; i < n - 1; i++) {
        if (i < n - 3)
            compute_breaks(s, f);

        compute_affinity(s, f);

        f = f->next;
    }

    if (f0->affinity == -1)
        return 1;

    l = find_first_break(f0, 3);

    if (l == 1 && s->strict_breaks < 0)
        l = 0;

    switch (l) {
    case 1:
        return 1 + (s->strict_breaks < 1 && f0->affinity == 1 && f1->affinity == -1);
    case 2:

        if (s->strict_pairs
            && (f0->prev->breaks & BREAK_RIGHT) && (f2->breaks & BREAK_LEFT)
            && (f0->affinity != 1 || f1->affinity != -1) )
            return 1;
        return 1 + (f1->affinity != 1);
    case 3:
        return 2 + (f2->affinity != 1);
    default:

        if (f1->affinity == 1)
            return 1;
        else if (f1->affinity == -1)
            return 2;
        else if (f2->affinity == -1) {
            return (f0->affinity == 1) ? 3 : 1;
        } else {
            return 2;
        }
    }
}

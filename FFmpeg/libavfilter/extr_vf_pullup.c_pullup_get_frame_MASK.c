#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__* ifields; int length; size_t parity; scalar_t__ buffer; scalar_t__* ofields; scalar_t__ lock; } ;
struct TYPE_9__ {TYPE_1__* first; TYPE_2__ frame; } ;
struct TYPE_7__ {int affinity; size_t parity; scalar_t__ buffer; struct TYPE_7__* next; } ;
typedef  TYPE_2__ PullupFrame ;
typedef  TYPE_3__ PullupContext ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static PullupFrame *FUNC4(PullupContext *s)
{
    PullupFrame *fr = &s->frame;
    int i, n = FUNC2(s);
    int aff = s->first->next->affinity;

    FUNC1(n < FUNC0(fr->ifields));
    if (!n || fr->lock)
        return NULL;

    fr->lock++;
    fr->length = n;
    fr->parity = s->first->parity;
    fr->buffer = 0;

    for (i = 0; i < n; i++) {
        /* We cheat and steal the buffer without release+relock */
        fr->ifields[i]   = s->first->buffer;
        s->first->buffer = 0;
        s->first         = s->first->next;
    }

    if (n == 1) {
        fr->ofields[fr->parity    ] = fr->ifields[0];
        fr->ofields[fr->parity ^ 1] = 0;
    } else if (n == 2) {
        fr->ofields[fr->parity    ] = fr->ifields[0];
        fr->ofields[fr->parity ^ 1] = fr->ifields[1];
    } else if (n == 3) {
        if (!aff)
            aff = (fr->ifields[0] == fr->ifields[1]) ? -1 : 1;
        fr->ofields[fr->parity    ] = fr->ifields[1 + aff];
        fr->ofields[fr->parity ^ 1] = fr->ifields[1      ];
    }

    FUNC3(fr->ofields[0], 0);
    FUNC3(fr->ofields[1], 1);

    if (fr->ofields[0] == fr->ofields[1]) {
        fr->buffer = fr->ofields[0];
        FUNC3(fr->buffer, 2);
        return fr;
    }

    return fr;
}
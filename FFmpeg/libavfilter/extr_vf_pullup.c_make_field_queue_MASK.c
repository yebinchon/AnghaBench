#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef  TYPE_1__ PullupField ;
typedef  int /*<<< orphan*/  PullupContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static PullupField *FUNC4(PullupContext *s, int len)
{
    PullupField *head, *f;

    f = head = FUNC2(sizeof(*head));
    if (!f)
        return NULL;

    if (FUNC0(s, f) < 0) {
        FUNC1(f);
        return NULL;
    }

    for (; len > 0; len--) {
        f->next = FUNC2(sizeof(*f->next));
        if (!f->next) {
            FUNC3(head);
            return NULL;
        }

        f->next->prev = f;
        f = f->next;
        if (FUNC0(s, f) < 0) {
            FUNC3(head);
            return NULL;
        }
    }

    f->next = head;
    head->prev = f;

    return head;
}
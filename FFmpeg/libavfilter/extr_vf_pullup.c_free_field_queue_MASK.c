#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* vars; struct TYPE_5__* combs; struct TYPE_5__* diffs; } ;
typedef  TYPE_1__ PullupField ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(PullupField *head)
{
    PullupField *f = head;
    do {
        PullupField *next;
        if (!f)
            break;
        FUNC0(f->diffs);
        FUNC0(f->combs);
        FUNC0(f->vars);
        next = f->next;
        FUNC1(f, 0, sizeof(*f)); // clear all pointers to avoid stale ones
        FUNC0(f);
        f = next;
    } while (f != head);
}
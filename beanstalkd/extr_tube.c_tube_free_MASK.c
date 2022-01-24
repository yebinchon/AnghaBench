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
struct TYPE_8__ {TYPE_3__* data; } ;
struct TYPE_7__ {TYPE_3__* data; } ;
struct TYPE_9__ {int /*<<< orphan*/  waiting_conns; TYPE_2__ delay; TYPE_1__ ready; } ;
typedef  TYPE_3__ Tube ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  tubes ; 

__attribute__((used)) static void
FUNC3(Tube *t)
{
    FUNC2(&tubes, t);
    FUNC0(t->ready.data);
    FUNC0(t->delay.data);
    FUNC1(&t->waiting_conns);
    FUNC0(t);
}
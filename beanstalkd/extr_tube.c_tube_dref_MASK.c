#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int refs; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Tube ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void
FUNC2(Tube *t)
{
    if (!t) return;
    if (t->refs < 1) {
        FUNC1("refs is zero for tube: %s", t->name);
        return;
    }

    --t->refs;
    if (t->refs < 1)
        FUNC0(t);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint ;
struct TYPE_5__ {int /*<<< orphan*/  next; } ;
struct TYPE_6__ {TYPE_1__ buried; } ;
typedef  TYPE_2__ Tube ;
typedef  int /*<<< orphan*/  Server ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint
FUNC2(Server *s, Tube *t, uint n)
{
    uint i;
    for (i = 0; (i < n) && FUNC0(t); ++i) {
        FUNC1(s, t->buried.next);
    }
    return i;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int in_conns; TYPE_1__* srv; scalar_t__ tickat; int /*<<< orphan*/  tickpos; } ;
struct TYPE_6__ {int /*<<< orphan*/  conns; } ;
typedef  TYPE_2__ Conn ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(Conn *c)
{
    if (c->in_conns) {
        FUNC2(&c->srv->conns, c->tickpos);
        c->in_conns = 0;
    }
    c->tickat = FUNC0(c);
    if (c->tickat) {
        FUNC1(&c->srv->conns, c);
        c->in_conns = 1;
    }
}
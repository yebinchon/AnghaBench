#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  waiting_ct; } ;
struct TYPE_10__ {int /*<<< orphan*/  waiting_conns; TYPE_2__ stat; } ;
typedef  TYPE_3__ Tube ;
struct TYPE_12__ {int /*<<< orphan*/  waiting_ct; } ;
struct TYPE_8__ {size_t len; TYPE_3__** items; } ;
struct TYPE_11__ {TYPE_1__ watch; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ Conn ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_TYPE_WAITING ; 
 TYPE_6__ global_stat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC1(Conn *c)
{
    c->type |= CONN_TYPE_WAITING;
    global_stat.waiting_ct++;
    size_t i;
    for (i = 0; i < c->watch.len; i++) {
        Tube *t = c->watch.items[i];
        t->stat.waiting_ct++;
        FUNC0(&t->waiting_conns, c);
    }
}
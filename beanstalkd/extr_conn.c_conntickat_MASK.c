#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int64 ;
struct TYPE_8__ {int deadline_at; } ;
struct TYPE_10__ {TYPE_1__ r; } ;
struct TYPE_9__ {scalar_t__ pending_timeout; } ;
typedef  TYPE_2__ Conn ;

/* Variables and functions */
 int INT64_MAX ; 
 int SAFETY_MARGIN ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 TYPE_5__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 () ; 

__attribute__((used)) static int64
FUNC5(Conn *c)
{
    int margin = 0, should_timeout = 0;
    int64 t = INT64_MAX;

    if (FUNC0(c)) {
        margin = SAFETY_MARGIN;
    }

    if (FUNC2(c)) {
        t = FUNC1(c)->r.deadline_at - FUNC4() - margin;
        should_timeout = 1;
    }
    if (c->pending_timeout >= 0) {
        t = FUNC3(t, ((int64)c->pending_timeout) * 1000000000);
        should_timeout = 1;
    }

    if (should_timeout) {
        return FUNC4() + t;
    }
    return 0;
}
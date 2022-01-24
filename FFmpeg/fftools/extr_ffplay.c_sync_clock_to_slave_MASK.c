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
struct TYPE_6__ {int /*<<< orphan*/  serial; } ;
typedef  TYPE_1__ Clock ;

/* Variables and functions */
 scalar_t__ AV_NOSYNC_THRESHOLD ; 
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,double,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Clock *c, Clock *slave)
{
    double clock = FUNC1(c);
    double slave_clock = FUNC1(slave);
    if (!FUNC2(slave_clock) && (FUNC2(clock) || FUNC0(clock - slave_clock) > AV_NOSYNC_THRESHOLD))
        FUNC3(c, slave_clock, slave->serial);
}
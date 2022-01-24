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
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 

void
FUNC2(signal_user_data_t *ud, int status)
{
    int count, ii;

    count = FUNC0(ud->queue);
    for (ii = 0; ii < count; ii++)
    {
        FUNC1(ud, ii, status);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_lcpu_t ;
struct TYPE_3__ {int /*<<< orphan*/  lcpu; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 

x86_lcpu_t *
FUNC1(void)
{
    cpu_data_t	*cpup	= FUNC0();

    return(&cpup->lcpu);
}
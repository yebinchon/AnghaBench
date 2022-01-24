#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_die_t ;
struct TYPE_4__ {int /*<<< orphan*/ * die; } ;
struct TYPE_5__ {TYPE_1__ lcpu; } ;
typedef  TYPE_2__ cpu_data_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 

__attribute__((used)) static x86_die_t *
FUNC1(void)
{
    cpu_data_t	*cpup	= FUNC0();

    return(cpup->lcpu.die);
}
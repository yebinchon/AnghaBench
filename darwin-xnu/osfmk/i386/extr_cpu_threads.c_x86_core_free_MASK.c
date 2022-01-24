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
struct TYPE_4__ {struct TYPE_4__* next_in_die; } ;
typedef  TYPE_1__ x86_core_t ;

/* Variables and functions */
 TYPE_1__* free_cores ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x86_topo_lock ; 

__attribute__((used)) static void
FUNC2(x86_core_t *core)
{
    FUNC0(&x86_topo_lock);
    core->next_in_die = free_cores;
    free_cores = core;
    FUNC1(&x86_topo_lock);
}
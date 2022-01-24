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
struct TYPE_4__ {struct TYPE_4__* next_in_pkg; } ;
typedef  TYPE_1__ x86_die_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long*,int) ; 
 TYPE_1__* free_dies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_dies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x86_topo_lock ; 

__attribute__((used)) static void
FUNC3(x86_die_t *die)
{
    FUNC1(&x86_topo_lock);
    die->next_in_pkg = free_dies;
    free_dies = die;
    FUNC0((long *) &num_dies, 1);
    FUNC2(&x86_topo_lock);
}
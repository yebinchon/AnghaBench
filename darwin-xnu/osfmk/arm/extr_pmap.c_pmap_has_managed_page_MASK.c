#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ vm_first_phys ; 
 scalar_t__ vm_last_phys ; 

boolean_t
FUNC1(ppnum_t first, ppnum_t last)
{
    if (FUNC0(first) >= vm_last_phys)  return (FALSE);
    if (FUNC0(last)  <  vm_first_phys) return (FALSE);

	return (TRUE);
}
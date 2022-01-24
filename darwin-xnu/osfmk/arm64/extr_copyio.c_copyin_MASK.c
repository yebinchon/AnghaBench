#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ user_addr_t ;
struct TYPE_4__ {TYPE_1__* map; } ;
struct TYPE_3__ {scalar_t__ pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  COPYIO_IN ; 
 int FUNC0 (scalar_t__ const,void*,scalar_t__) ; 
 int FUNC1 (scalar_t__ const,uintptr_t,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,void*,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 () ; 
 scalar_t__ kernel_pmap ; 

int
FUNC4(const user_addr_t user_addr, void *kernel_addr, vm_size_t nbytes)
{
	int result;

	if (nbytes == 0)
		return 0;

	result = FUNC1(user_addr, (uintptr_t)kernel_addr, nbytes);
	if (result) return result;

	if (FUNC3()->map->pmap == kernel_pmap)
		return FUNC0(user_addr, kernel_addr, nbytes);
	else
		return FUNC2(COPYIO_IN, (const char *)(uintptr_t)user_addr, kernel_addr, nbytes, NULL);
}
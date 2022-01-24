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
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ user_size_t ;
typedef  scalar_t__ user_addr_t ;

/* Variables and functions */
 int B_READ ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC5(
	user_addr_t	addr,
	user_size_t	len,
	int	prot)
{
	vm_map_t	map;

	map = FUNC0();
	return (FUNC1(
			map,
			FUNC4(addr,
					  FUNC2(map)),
			FUNC3(addr+len,
					  FUNC2(map)),
			prot == B_READ ? VM_PROT_READ : VM_PROT_WRITE));
}
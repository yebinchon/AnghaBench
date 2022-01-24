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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ADDRESS ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

kern_return_t
FUNC5(
	vm_map_t		map,
	void			*src_p,
	vm_map_address_t	dst_addr,
	vm_size_t		size)
{
	kern_return_t	kr = KERN_SUCCESS;

	if(FUNC1() == map) {
		if (FUNC0(src_p, dst_addr, size)) {
			kr = KERN_INVALID_ADDRESS;
		}
	} else {
		vm_map_t	oldmap;

		/* take on the identity of the target map while doing */
		/* the transfer */

		FUNC3(map);
		oldmap = FUNC4(map);
		if (FUNC0(src_p, dst_addr, size)) {
			kr = KERN_INVALID_ADDRESS;
		}
		FUNC4(oldmap);
		FUNC2(map);
	}
	return kr;
}
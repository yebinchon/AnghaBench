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
typedef  int /*<<< orphan*/  vm_tag_t ;
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_map_t ;
typedef  scalar_t__ mach_vm_size_t ;
typedef  scalar_t__ mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/ * host_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/ * HOST_PRIV_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_HOST ; 
 int /*<<< orphan*/  KERN_INVALID_TASK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int VM_PROT_ALL ; 
 int VM_PROT_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  realhost ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC6(
	host_priv_t		host_priv,
	vm_map_t		map,
	mach_vm_offset_t	start,
	mach_vm_size_t	size,
	vm_prot_t		access,
	vm_tag_t		tag)
{
	kern_return_t		rc;

	if (host_priv == HOST_PRIV_NULL)
		return KERN_INVALID_HOST;

	FUNC1(host_priv == &realhost);

	if (map == VM_MAP_NULL)
		return KERN_INVALID_TASK;

	if (access & ~VM_PROT_ALL || (start + size < start))
		return KERN_INVALID_ARGUMENT;

	if (access != VM_PROT_NONE) {
		rc = FUNC5(map,
				 FUNC3(start,
						   FUNC0(map)),
				 FUNC2(start+size,
						   FUNC0(map)),
				 access, tag,
				 TRUE);
	} else {
		rc = FUNC4(map,
				   FUNC3(start,
						     FUNC0(map)),
				   FUNC2(start+size,
						     FUNC0(map)),
				   TRUE);
	}
	return rc;
}
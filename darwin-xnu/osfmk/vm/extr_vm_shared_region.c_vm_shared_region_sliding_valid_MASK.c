#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_shared_region_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_7__ {scalar_t__ slide; } ;
struct TYPE_6__ {scalar_t__ sr_slid; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 

kern_return_t
FUNC5(uint32_t slide) 
{
	kern_return_t kr = KERN_SUCCESS;
	vm_shared_region_t sr = FUNC3(FUNC0());

	/* No region yet? we're fine. */
	if (sr == NULL) {
		return kr;
	}

	if ((sr->sr_slid == TRUE) && slide) {
	        if (slide != FUNC4(sr)->slide) {
			FUNC1("Only one shared region can be slid\n");
			kr = KERN_FAILURE;	
		} else {
			/*
			 * Request for sliding when we've
			 * already done it with exactly the
			 * same slide value before.
			 * This isn't wrong technically but
			 * we don't want to slide again and
			 * so we return this value.
			 */
			kr = KERN_INVALID_ARGUMENT; 
		}
	}
	FUNC2(sr);
	return kr;
}
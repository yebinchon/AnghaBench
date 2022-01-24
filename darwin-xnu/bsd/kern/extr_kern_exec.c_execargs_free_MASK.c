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
typedef  scalar_t__ vm_offset_t ;
struct image_params {int /*<<< orphan*/ * ip_strings; } ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* execargs_cache ; 
 int execargs_cache_size ; 
 int /*<<< orphan*/  execargs_free_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ execargs_waiters ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct image_params *imgp)
{
	kern_return_t kret;
	int i;
	boolean_t needs_wakeup = FALSE;
	
	kret = FUNC3(imgp->ip_strings);

	FUNC1();
	execargs_free_count++;

	for (i = 0; i < execargs_cache_size; i++) {
		vm_offset_t element = execargs_cache[i];
		if (element == 0) {
			execargs_cache[i] = (vm_offset_t) imgp->ip_strings;
			imgp->ip_strings = NULL;
			break;
		}
	}

	FUNC0(imgp->ip_strings == NULL);

	if (execargs_waiters > 0)
		needs_wakeup = TRUE;
	
	FUNC2();

	if (needs_wakeup == TRUE)
		FUNC4();

	return ((kret == KERN_SUCCESS ? 0 : EINVAL));
}
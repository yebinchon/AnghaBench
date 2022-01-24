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
typedef  int /*<<< orphan*/  zone_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  recycle_buf_failed ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zalloc_nopagewait_failed ; 

__attribute__((used)) static void *
FUNC5(int nsize)
{
	zone_t z;
	void *ptr;
	boolean_t was_vmpriv;

	z = FUNC0(nsize);

	/*
	 * make sure we're NOT priviliged so that
	 * if a vm_page_grab is needed, it won't
	 * block if we're out of free pages... if
	 * it blocks, then we can't honor the
	 * nopagewait request
	 */
	was_vmpriv = FUNC2(FALSE);

	ptr = FUNC4(z);

	if (was_vmpriv == TRUE)
		FUNC2(TRUE);

	if (ptr == NULL) {

		zalloc_nopagewait_failed++;

		ptr = FUNC1(nsize);

		if (ptr == NULL) {

			recycle_buf_failed++;

			if (was_vmpriv == FALSE)
				FUNC2(TRUE);

			ptr = FUNC3(z);

			if (was_vmpriv == FALSE)
				FUNC2(FALSE);
		}
	}
	return (ptr);
}
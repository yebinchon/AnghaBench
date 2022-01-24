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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int KERN_NO_SPACE ; 
 scalar_t__ bootprofile_buffer ; 
 scalar_t__ bootprofile_buffer_current_position ; 
 scalar_t__ bootprofile_interval_abs ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(user_addr_t buffer, uint32_t *length)
{
	int result = 0;

	FUNC0();

	if (bootprofile_buffer == 0) {
		*length = 0;
		goto out;
	}

	if (*length < bootprofile_buffer_current_position) {
		result = KERN_NO_SPACE;
		goto out;
	}

	if ((result = FUNC2((void *)bootprofile_buffer, buffer,
	    bootprofile_buffer_current_position)) != 0) {
		*length = 0;
		goto out;
	}
	*length = bootprofile_buffer_current_position;

	/* cancel future timers */
	bootprofile_interval_abs = 0;

out:

	FUNC1();

	return (result);
}
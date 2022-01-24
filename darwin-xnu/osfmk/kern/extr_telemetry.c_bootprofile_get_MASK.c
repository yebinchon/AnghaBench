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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ bootprofile_buffer ; 
 int /*<<< orphan*/  bootprofile_buffer_current_position ; 

void FUNC2(void **buffer, uint32_t *length)
{
	FUNC0();
	*buffer = (void*) bootprofile_buffer;
	*length = bootprofile_buffer_current_position;
	FUNC1();
}
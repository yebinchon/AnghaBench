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
typedef  int /*<<< orphan*/  dev_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROFILE_MAJOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  profile_cdevsw ; 

void FUNC3( void )
{
	int majdevno = FUNC0(PROFILE_MAJOR, &profile_cdevsw);

	if (majdevno < 0) {
		FUNC1("profile_init: failed to allocate a major number!\n");
		return;
	}

	FUNC2( (dev_info_t*)(uintptr_t)majdevno);
}
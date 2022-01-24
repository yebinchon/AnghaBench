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
 int /*<<< orphan*/  LOCKSTAT_MAJOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lockstat_cdevsw ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3( void )
{
	int majdevno = FUNC0(LOCKSTAT_MAJOR, &lockstat_cdevsw);

	if (majdevno < 0) {
		FUNC2("lockstat_init: failed to allocate a major number!\n");
		return;
	}

	FUNC1((dev_info_t*)(uintptr_t)majdevno);
}
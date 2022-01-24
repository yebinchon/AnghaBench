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
 int /*<<< orphan*/  SDT_MAJOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sdt_cdevsw ; 

void FUNC4( void )
{
	int majdevno = FUNC0(SDT_MAJOR, &sdt_cdevsw);
		
	if (majdevno < 0) {
		FUNC2("sdt_init: failed to allocate a major number!\n");
		return;
	}

	if (FUNC1()) {
		return;
	}

	FUNC3((dev_info_t*)(uintptr_t)majdevno);
}
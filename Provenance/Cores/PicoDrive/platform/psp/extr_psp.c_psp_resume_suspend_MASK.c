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
typedef  scalar_t__ SceUID ;

/* Variables and functions */
 int /*<<< orphan*/  PSP_O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{
	// for some reason file IO doesn't seem to work
	// after resume for some period of time, at least on 1.5
	SceUID fd;
	int i;
	for (i = 0; i < 30; i++) {
		fd = FUNC3("EBOOT.PBP", PSP_O_RDONLY, 0777);
		if (fd >= 0) break;
		FUNC4(100 * 1024);
	}
	if (fd >= 0) FUNC2(fd);
	FUNC1();
	if (i < 30)
		FUNC0("io resumed after %i tries\n", i);
	else {
		FUNC0("io resume failed with %08x\n", fd);
		FUNC4(500 * 1024);
	}
}
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
typedef  int /*<<< orphan*/  unm ;
struct utsname {char* release; } ;
typedef  int /*<<< orphan*/  buff2 ;
typedef  int /*<<< orphan*/  buff1 ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int kernel_version ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct utsname*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct utsname*) ; 
 scalar_t__ warm_fd ; 

int FUNC8(void)
{
	struct utsname unm;
	char buff1[32], buff2[128];
	int ret;

	FUNC2(&unm, 0, sizeof(unm));
	FUNC7(&unm);

	if (FUNC5(unm.release) < 3 || unm.release[1] != '.') {
		FUNC0(stderr, "unexpected version string: %s\n", unm.release);
		goto fail;
	}
	kernel_version = ((unm.release[0] - '0') << 4) | (unm.release[2] - '0');

	warm_fd = FUNC3("/proc/warm", O_RDWR);
	if (warm_fd >= 0)
		return 0;

	FUNC4(buff1, sizeof(buff1), "warm_%s.%s", unm.release, kernel_version >= 0x26 ? "ko" : "o");
	FUNC4(buff2, sizeof(buff2), "/sbin/insmod %s verbose=1", buff1);

	/* try to insmod */
	ret = FUNC6(buff2);
	if (ret != 0) {
		FUNC0(stderr, "system/insmod failed: %d %d\n", ret, errno);
		if (kernel_version >= 0x26) {
			ret = FUNC1(buff1, "verbose=1");
			if (ret != 0)
				FUNC0(stderr, "manual insmod also failed: %d\n", ret);
		}
	}

	warm_fd = FUNC3("/proc/warm", O_RDWR);
	if (warm_fd >= 0)
		return 0;

fail:
	FUNC0(stderr, "wARM: can't init, acting as sys_cacheflush wrapper\n");
	return -1;
}
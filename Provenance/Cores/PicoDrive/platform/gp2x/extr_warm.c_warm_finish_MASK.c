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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int kernel_version ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct utsname*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct utsname*) ; 
 int warm_fd ; 

void FUNC8(void)
{
	char name[32], cmd[64];
	int ret;

	if (warm_fd < 0)
		return;

	FUNC0(warm_fd);
	warm_fd = -1;

	if (kernel_version < 0x26) {
		struct utsname unm;
		FUNC3(&unm, 0, sizeof(unm));
		FUNC7(&unm);
		FUNC4(name, sizeof(name), "warm_%s", unm.release);
	}
	else
		FUNC5(name, "warm");

	FUNC4(cmd, sizeof(cmd), "/sbin/rmmod %s", name);
	ret = FUNC6(cmd);
	if (ret != 0) {
		FUNC1(stderr, "system/rmmod failed: %d %d\n", ret, errno);
		FUNC2(name);
	}
}
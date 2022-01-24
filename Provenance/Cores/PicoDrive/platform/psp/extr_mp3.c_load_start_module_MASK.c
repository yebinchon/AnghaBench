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
typedef  int SceUID ;

/* Variables and functions */
 int /*<<< orphan*/  PSP_MEMORY_PARTITION_KERNEL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SceUID FUNC4(const char *prxname)
{
	SceUID mod, mod1;
	int status, ret;

	mod = FUNC2(prxname, PSP_MEMORY_PARTITION_KERNEL);
	if (mod < 0) {
		FUNC1("failed to load %s (%08x), trying kuKernelLoadModule\n", prxname, mod);
		mod1 = FUNC0(prxname, 0, NULL);
		if (mod1 < 0) FUNC1("kuKernelLoadModule failed with %08x\n", mod1);
		else {
			ret = FUNC3(mod1, 0, NULL, &status, 0);
			if (ret < 0) FUNC1("sceKernelStartModule failed with %08x\n", ret);
			else mod = mod1;
		}
	}
	return mod;
}
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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* pnd_script_base ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC3(int which, int enable)
{
	static int was_ovl_enabled = -1;
	int tv_enabled = 0;
	char buf[128];
	int ret;

	if (which != 1)
		return -1;
	if (enable == was_ovl_enabled)
		return 0;

	was_ovl_enabled = -1;

	tv_enabled = FUNC1(
		   "/sys/devices/platform/omapdss/display1/enabled");
	if (tv_enabled < 0)
		return -1;

	if (!tv_enabled) {
		// tv-out not enabled
		return 0;
	}

	FUNC2(buf, sizeof(buf), "%s/op_tvout.sh -l %d",
		 pnd_script_base, enable);
	ret = FUNC0(buf);
	if (ret == 0)
		was_ovl_enabled = enable;

	return ret;
}
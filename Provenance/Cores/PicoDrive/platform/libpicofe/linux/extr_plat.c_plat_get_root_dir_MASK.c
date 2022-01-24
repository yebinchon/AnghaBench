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

/* Variables and functions */
 int /*<<< orphan*/  PICO_HOME_DIR ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*,int,char*,char const*,int /*<<< orphan*/ ) ; 

int FUNC4(char *dst, int len)
{
#if !defined(__GP2X__) && !defined(PANDORA)
	const char *home = FUNC0("HOME");
	int ret;

	if (home != NULL) {
		ret = FUNC3(dst, len, "%s%s", home, PICO_HOME_DIR);
		if (ret >= len)
			ret = len - 1;
		FUNC1(dst, 0755);
		return ret;
	}
#endif
	return FUNC2(dst, len);
}
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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  utf8_filenames ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

int FUNC4(const char *filename)
{
	if (!utf8_filenames) {
		return FUNC0(filename);
	} else {
		wchar_t *wname;
		int ret;

		if (!(wname = FUNC3(filename))) return -1;
		ret = FUNC1(wname);
		FUNC2(wname);

		return ret;
	}
}
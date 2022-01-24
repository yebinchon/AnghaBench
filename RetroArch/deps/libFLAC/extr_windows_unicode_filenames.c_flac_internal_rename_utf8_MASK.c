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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  utf8_filenames ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

int FUNC4(const char *oldname, const char *newname)
{
	if (!utf8_filenames) {
		return FUNC2(oldname, newname);
	} else {
		wchar_t *wold = NULL;
		wchar_t *wnew = NULL;
		int ret = -1;

		do {
			if (!(wold = FUNC3(oldname))) break;
			if (!(wnew = FUNC3(newname))) break;
			ret = FUNC0(wold, wnew);
		} while(0);

		FUNC1(wold);
		FUNC1(wnew);

		return ret;
	}
}
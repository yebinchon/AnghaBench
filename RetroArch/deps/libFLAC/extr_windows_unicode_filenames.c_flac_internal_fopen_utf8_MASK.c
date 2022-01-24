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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  utf8_filenames ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

FILE* FUNC4(const char *filename, const char *mode)
{
	if (!utf8_filenames) {
		return FUNC1(filename, mode);
	} else {
		wchar_t *wname = NULL;
		wchar_t *wmode = NULL;
		FILE *f = NULL;

		do {
			if (!(wname = FUNC3(filename))) break;
			if (!(wmode = FUNC3(mode))) break;
			f = FUNC0(wname, wmode);
		} while(0);

		FUNC2(wname);
		FUNC2(wmode);

		return f;
	}
}
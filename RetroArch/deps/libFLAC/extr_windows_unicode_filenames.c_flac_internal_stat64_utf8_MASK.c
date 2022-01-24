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
struct __stat64 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct __stat64*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct __stat64*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  utf8_filenames ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

int FUNC4(const char *path, struct __stat64 *buffer)
{
	if (!utf8_filenames) {
		return FUNC0(path, buffer);
	} else {
		wchar_t *wpath;
		int ret;

		if (!(wpath = FUNC3(path))) return -1;
		ret = FUNC1(wpath, buffer);
		FUNC2(wpath);

		return ret;
	}
}
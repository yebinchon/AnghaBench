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
struct utimbuf {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;
struct __utimbuf64 {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct __utimbuf64*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  utf8_filenames ; 
 int FUNC2 (char const*,struct utimbuf*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

int FUNC4(const char *filename, struct utimbuf *times)
{
	if (!utf8_filenames) {
		return FUNC2(filename, times);
	} else {
		wchar_t *wname;
		struct __utimbuf64 ut;
		int ret;

		if (!(wname = FUNC3(filename))) return -1;
		ut.actime = times->actime;
		ut.modtime = times->modtime;
		ret = FUNC0(wname, &ut);
		FUNC1(wname);

		return ret;
	}
}
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
typedef  int /*<<< orphan*/  mach_error_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(const char *str, mach_error_t err)
{
	char *err_str;
	char buf[1024];
	boolean_t diag;

	err_str = FUNC2(err, &diag);

	if (diag) {
		FUNC0(buf, sizeof(buf), "%s %s (%x)", FUNC3(err), err_str, err);
		err_str = buf;
	}

	FUNC1("%s %s\n", str, err_str);
}
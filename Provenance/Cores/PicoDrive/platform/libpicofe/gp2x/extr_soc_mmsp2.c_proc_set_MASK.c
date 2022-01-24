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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(const char *path, const char *val)
{
	FILE *f;
	char tmp[16];

	f = FUNC2(path, "w");
	if (f == NULL) {
		FUNC4("failed to open: %s\n", path);
		return;
	}

	FUNC3(f, "0\n");
	FUNC0(f);

	FUNC4("\"%s\" is set to: ", path);
	f = FUNC2(path, "r");
	if (f == NULL) {
		FUNC4("(open failed)\n");
		return;
	}

	FUNC1(tmp, sizeof(tmp), f);
	FUNC4("%s", tmp);
	FUNC0(f);
}
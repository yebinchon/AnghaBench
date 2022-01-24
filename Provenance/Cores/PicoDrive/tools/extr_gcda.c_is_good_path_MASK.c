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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char *path)
{
	int len = FUNC3(path);

	path[len-2] = 'n';
	path[len-1] = 'o';

	FILE *f = FUNC1(path, "rb");

	path[len-2] = 'd';
	path[len-1] = 'a';

	if (f) {
		FUNC0(f);
		return 1;
	}
	FUNC2("not good path: %s\n", path);
	return 0;
}
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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const char *a, const char *b)
{
	char *aa, *bb;
	int ret;

	if (!a && b)
		return -1;
	if (a && !b)
		return 1;
	if (!a && !b)
		return 0;

	aa = FUNC1(a);
	bb = FUNC1(b);

	if (aa == NULL || bb == NULL) {
		FUNC0(aa);
		FUNC0(bb);
		return FUNC2(a, b);
	}

	FUNC3(aa);
	FUNC3(bb);

	ret = FUNC2(aa, bb);

	FUNC0(aa);
	FUNC0(bb);

	return ret;
}
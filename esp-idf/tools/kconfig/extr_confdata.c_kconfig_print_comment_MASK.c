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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(FILE *fp, const char *value, void *arg)
{
	const char *p = value;
	size_t l;

	for (;;) {
		l = FUNC1(p, "\n");
		FUNC0(fp, "#");
		if (l) {
			FUNC0(fp, " ");
			FUNC2(p, l, 1, fp);
			p += l;
		}
		FUNC0(fp, "\n");
		if (*p++ == '\0')
			break;
	}
}
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
struct ubsan_violation {int /*<<< orphan*/  loc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (struct ubsan_violation*,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubsan_violation*) ; 
 scalar_t__ ubsan_print ; 

__attribute__((used)) static void
FUNC5(struct ubsan_violation *v, bool fatal)
{
	const size_t sz = 256;
	static char buf[sz];
	size_t n = 0;
	buf[0] = '\0';

	if (!FUNC3(v->loc)) {
		/* violation site already reported */
		return;
	}

	FUNC4(v);

	if (ubsan_print || fatal) {
		n += FUNC2(v, buf+n, sz-n);
	}

	if (ubsan_print) {
		FUNC1("UBSan: %s", buf);
	}

	if (fatal) {
		FUNC0("UBSan: %s", buf);
	}
}
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
 int B ; 
 int LOAD ; 
 int V ; 
 char const* list ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int* sizes ; 
 char* FUNC2 (char const*,char const) ; 

__attribute__((used)) static int FUNC3(int op, int type, const char *sz, const char *opname) {
	int count = 0;
	static int last;

	if (op == LOAD)
		return 0;
	if (last != 0 && last != op)
		FUNC0("\n");
	last = op;
	if (type == B || type == V) {
		FUNC0(" %s=%d", opname, op + type);
		count++;
	} else {
		int i, done = 0;
		const char *s;
		for (i = 0; sz[i] != '\0' && (s = FUNC2(list, sz[i])) != NULL; i++) {
			int n = sizes[s-list];
			if ((done&(1<<n)) == 0) {
				FUNC0(" %s%d=%d", opname, n, op + type + FUNC1(n));
				count++;
			}
			done |= 1<<n;
		}
	}
	FUNC0("\n");
	return count;
}
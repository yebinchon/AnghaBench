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
typedef  scalar_t__ OPMASK ;

/* Variables and functions */
 int KARRAY_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  karray_str_buf ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(OPMASK *a, OPMASK *b) {
	for (int i = 0; i < KARRAY_MAX; i++) {
		if (a[i] != b[i]) {
			FUNC2(a, karray_str_buf);
			FUNC1("Compare failed, opmask A:\n%s", karray_str_buf);
			FUNC2(b, karray_str_buf);
			FUNC1("Compare failed, opmask B:\n%s", karray_str_buf);
			FUNC0("opmasks not equal");
		}
	}
}
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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vec_str_buf ; 

__attribute__((used)) static void
FUNC4(void *a, void *b, int c) {
	if(FUNC2(a, b, c)) {
		FUNC3(a, vec_str_buf);
		FUNC1("Compare failed, vector A:\n%s", vec_str_buf);
		FUNC3(b, vec_str_buf);
		FUNC1("Compare failed, vector B:\n%s", vec_str_buf);
		FUNC0("Vectors not equal");
	}
}
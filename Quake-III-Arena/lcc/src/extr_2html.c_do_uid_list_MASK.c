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
typedef  int /*<<< orphan*/  list_ty ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(list_ty x) {
	int i, count = FUNC1(x);

	if (count == 0)
		FUNC3("<em>empty int list</em>\n");
	else {
		int i;
		FUNC3("<em>int list</em>");
		for (i= 0; i < count; i++) {
			FUNC3(" ");
			FUNC2(*(int *)FUNC0(x, i));
		}
	}
}
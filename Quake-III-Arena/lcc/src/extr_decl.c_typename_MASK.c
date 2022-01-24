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
typedef  int /*<<< orphan*/  Type ;

/* Variables and functions */
 int Aflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char t ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

Type FUNC4(void) {
	Type ty = FUNC2(NULL);

	if (t == '*' || t == '(' || t == '[') {
		ty = FUNC0(ty, NULL, NULL, 1);
		if (Aflag >= 1 && !FUNC1(ty))
			FUNC3("missing prototype\n");
	}
	return ty;
}
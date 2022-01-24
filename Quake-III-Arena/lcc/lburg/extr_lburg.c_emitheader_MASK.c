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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  rcsid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void) {
	time_t timer = FUNC2(NULL);

	FUNC1("/*\ngenerated at %sby %s\n*/\n", FUNC0(&timer), rcsid);
	FUNC1("static void %Pkids(NODEPTR_TYPE, int, NODEPTR_TYPE[]);\n");
	FUNC1("static void %Plabel(NODEPTR_TYPE);\n");
	FUNC1("static int %Prule(void*, int);\n\n");
}
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
struct Sudoku {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Sudoku ; 
 int /*<<< orphan*/  FUNC0 (struct Sudoku*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct Sudoku*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 struct Sudoku* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC4 (char*) ; 

int FUNC5(int argc, char** argv) {
	struct Sudoku* a = FUNC3(Sudoku);
	char buf[1024];
	while (FUNC2(buf, 1024, stdin) != 0) {
		if (FUNC4(buf) < 81) continue;
		FUNC0(a, buf);
		//putchar('\n');
	}
	FUNC1(a);
	return 0;
}
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
struct menu {int dummy; } ;
struct gstr {scalar_t__ max_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct menu*,struct gstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct menu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC5 (struct gstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct gstr*) ; 
 struct gstr FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct menu *menu)
{
	struct gstr help = FUNC7();

	help.max_width = FUNC1(stdscr) - 10;
	FUNC2(menu, &help);

	FUNC4(FUNC0(FUNC3(menu)), FUNC6(&help));
	FUNC5(&help);
}
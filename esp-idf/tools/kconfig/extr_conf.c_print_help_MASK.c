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
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct menu*,struct gstr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gstr*) ; 
 char* FUNC3 (struct gstr*) ; 
 struct gstr FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct menu *menu)
{
	struct gstr help = FUNC4();

	FUNC0(menu, &help);

	FUNC1("\n%s\n", FUNC3(&help));
	FUNC2(&help);
}
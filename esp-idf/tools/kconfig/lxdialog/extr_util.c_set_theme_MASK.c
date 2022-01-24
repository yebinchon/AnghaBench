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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *theme)
{
	int use_color = 1;
	if (!theme)
		FUNC1();
	else if (FUNC3(theme, "classic") == 0)
		FUNC2();
	else if (FUNC3(theme, "bluetitle") == 0)
		FUNC1();
	else if (FUNC3(theme, "blackbg") == 0)
		FUNC0();
	else if (FUNC3(theme, "mono") == 0)
		use_color = 0;

	return use_color;
}
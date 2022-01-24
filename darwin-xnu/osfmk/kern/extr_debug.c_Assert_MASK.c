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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  mach_assert ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,char const*) ; 

void __attribute__((noinline))
FUNC2(
	const char	*file,
	int		line,
	const char	*expression
      )
{
	if (!mach_assert) {
		FUNC0("%s:%d non-fatal Assertion: %s", file, line, expression);
		return;
	}

	FUNC1("%s:%d Assertion failed: %s", file, line, expression);
}
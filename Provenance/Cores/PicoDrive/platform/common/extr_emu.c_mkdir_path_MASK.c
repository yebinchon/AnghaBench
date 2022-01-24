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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static void FUNC4(char *path_with_reserve, int pos, const char *name)
{
	FUNC3(path_with_reserve + pos, name);
	if (FUNC2(path_with_reserve))
		return;
	if (FUNC1(path_with_reserve, 0777) < 0)
		FUNC0("failed to create: %s\n", path_with_reserve);
}
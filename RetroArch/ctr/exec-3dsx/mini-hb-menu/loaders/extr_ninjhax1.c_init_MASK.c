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
typedef  int /*<<< orphan*/  Result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  callBootloader_1x ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  setArgs_1x ; 

__attribute__((used)) static bool FUNC3(void)
{
	Result res = FUNC2();
	if (FUNC1(res))
		return false;

	FUNC0((void**)&callBootloader_1x, (void**)&setArgs_1x);
	return true;
}
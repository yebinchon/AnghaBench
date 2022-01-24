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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ Result ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__* FUNC3 () ; 
 int /*<<< orphan*/  hbldrHandle ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Result FUNC6(const char* path)
{
	u32 pathLen = FUNC4(path) + 1;
	u32* cmdbuf = FUNC3();

	cmdbuf[0] = FUNC1(2, 0, 2); //0x20002
	cmdbuf[1] = FUNC0(pathLen, 0);
	cmdbuf[2] = (u32)path;

	Result rc = FUNC5(hbldrHandle);
	if (FUNC2(rc)) rc = cmdbuf[1];
	return rc;
}
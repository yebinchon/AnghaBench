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
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__* FUNC3 () ; 
 int /*<<< orphan*/  hbldrHandle ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Result FUNC5(const void* buffer, u32 size)
{
	u32* cmdbuf = FUNC3();

	cmdbuf[0] = FUNC1(3, 0, 2); //0x30002
	cmdbuf[1] = FUNC0(size, 1);
	cmdbuf[2] = (u32)buffer;

	Result rc = FUNC4(hbldrHandle);
	if (FUNC2(rc)) rc = cmdbuf[1];
	return rc;
}
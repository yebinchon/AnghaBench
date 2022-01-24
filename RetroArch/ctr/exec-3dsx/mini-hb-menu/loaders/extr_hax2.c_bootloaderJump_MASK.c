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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  memmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  argBuf ; 
 int /*<<< orphan*/  argBufLen ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fileHandle ; 
 scalar_t__ memMapBuf ; 
 int /*<<< orphan*/  targetMediatype ; 
 int targetProcess ; 
 int targetTid ; 
 scalar_t__ useMemMap ; 

__attribute__((used)) static void FUNC4(void)
{
	if (targetProcess == -1)
		FUNC3(fileHandle, argBuf, argBufLen);
	else if (targetProcess == -2)
	{
		if (useMemMap)
			FUNC1(targetMediatype, argBuf, argBufLen, (u32)targetTid, (u32)(targetTid>>32), (memmap_t*)memMapBuf);
		else
			FUNC2(targetMediatype, argBuf, argBufLen, (u32)targetTid, (u32)(targetTid>>32));
	}
	else
		FUNC0(targetProcess, argBuf, argBufLen);
}
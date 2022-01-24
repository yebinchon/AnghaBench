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
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int* hostreg_r ; 

__attribute__((used)) static void FUNC3(int const_val)
{
	// 448
	FUNC0(1, 7, 24/2, 0x04);		// add  r1, r7, 0x400
	FUNC0(1, 1, 0, 0x48);		// add  r1, r1, 0x048
	FUNC1(1, 1, 6, 28);		// add  r1, r1, r6, lsr #28
	FUNC2(0, 1);			// strh r0, [r1]
	FUNC0(6, 6,  8/2, 0x20);		// add  r6, r6, #1<<29
	hostreg_r[1] = -1;
}
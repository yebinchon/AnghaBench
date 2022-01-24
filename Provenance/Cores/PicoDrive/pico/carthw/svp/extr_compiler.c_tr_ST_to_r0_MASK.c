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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int* hostreg_r ; 

__attribute__((used)) static void FUNC2(int op)
{
	// VR doesn't need much accuracy here..
	FUNC1(0, 6, 4);		// mov  r0, r6, lsr #4
	FUNC0(0, 0, 0, 0x67);		// and  r0, r0, #0x67
	hostreg_r[0] = -1;
}
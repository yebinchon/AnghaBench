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
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int KRREG_ST ; 
 int dirty_regb ; 
 int* hostreg_r ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!(dirty_regb & KRREG_ST)) return;
	FUNC0(6,6,0,0x0f);
	FUNC1(1);
	FUNC2(6,6,1,28);
	dirty_regb &= ~KRREG_ST;
	hostreg_r[1] = -1;
}
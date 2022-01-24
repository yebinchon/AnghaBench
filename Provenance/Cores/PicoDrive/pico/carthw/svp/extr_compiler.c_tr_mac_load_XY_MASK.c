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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KRREG_P ; 
 int /*<<< orphan*/  KRREG_X ; 
 int /*<<< orphan*/  KRREG_Y ; 
 int /*<<< orphan*/  SSP_X ; 
 int /*<<< orphan*/  SSP_Y ; 
 int /*<<< orphan*/  dirty_regb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  known_regb ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(int op)
{
	FUNC3(op&3, (op>>2)&3); // X
	FUNC0(4, 0, 16);
	FUNC3(((op>>4)&3)|4, (op>>6)&3); // Y
	FUNC1(4, 0);
	dirty_regb |= KRREG_P;
	FUNC2(SSP_X);
	FUNC2(SSP_Y);
	known_regb &= ~KRREG_X;
	known_regb &= ~KRREG_Y;
}
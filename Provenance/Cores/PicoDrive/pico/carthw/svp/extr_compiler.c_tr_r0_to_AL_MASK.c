#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* gr; } ;
struct TYPE_3__ {int l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 size_t SSP_A ; 
 int SSP_AL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int known_regb ; 
 TYPE_2__ known_regs ; 

__attribute__((used)) static void FUNC4(int const_val)
{
	FUNC0(5, 5, 16);		// mov  r5, r5, lsr #16
	FUNC2(5, 5, 0, 16);		// orr  r5, r5, r0, lsl #16
	FUNC1(5, 5, 16);		// mov  r5, r5, ror #16
	FUNC3(SSP_AL);
	if (const_val != -1) {
		known_regs.gr[SSP_A].l = const_val;
		known_regb |= 1 << SSP_AL;
	} else
		known_regb &= ~(1 << SSP_AL);
}
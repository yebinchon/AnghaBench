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
struct TYPE_3__ {int h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int KRREG_ST ; 
 int SSP_FLAG_N ; 
 int SSP_FLAG_Z ; 
 size_t SSP_ST ; 
 int dirty_regb ; 
 int* hostreg_r ; 
 int known_regb ; 
 TYPE_2__ known_regs ; 

__attribute__((used)) static void FUNC3(void)
{
	if (dirty_regb & KRREG_ST) return;
	if (known_regb & KRREG_ST) {
		int flags = 0;
		if (known_regs.gr[SSP_ST].h & SSP_FLAG_N) flags |= 8;
		if (known_regs.gr[SSP_ST].h & SSP_FLAG_Z) flags |= 4;
		FUNC1(4/2, flags);
	} else {
		FUNC0(1, 6, 28);
		FUNC2(1);
		hostreg_r[1] = -1;
	}
	dirty_regb |= KRREG_ST;
}
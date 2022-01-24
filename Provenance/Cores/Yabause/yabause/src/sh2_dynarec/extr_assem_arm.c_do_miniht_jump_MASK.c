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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/ ** jump_vaddr_reg ; 
 size_t slave ; 

void FUNC4(int rs,int rh,int ht) {
  FUNC0(rh,rs);
  FUNC2(ht,4,15);
  #ifdef CORTEX_A8_BRANCH_PREDICTION_HACK
  emit_mov(rs,7);
  emit_jmp(jump_vaddr_reg[slave][7]);
  #else
  FUNC1(jump_vaddr_reg[slave][rs]);
  #endif
}
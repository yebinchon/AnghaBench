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
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 

void FUNC1(unsigned int rt)
{
  // (assumes this instruction will be followed by a branch instruction)
  FUNC0(15,rt);
  //assem_debug("add %s,pc,#0\n",regname[rt]);
  //output_w32(0xe2800000|rd_rn_rm(rt,15,0));
}
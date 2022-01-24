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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rs, int rt)
{
  #ifdef HAVE_ARMv6
  assem_debug("sxtb %s,%s\n",regname[rt],regname[rs]);
  output_w32(0xe6af0070|rd_rn_rm(rt,0,rs));
  #else
  FUNC2(rs,24,rt);
  FUNC1(rt,24,rt);
  #endif
}
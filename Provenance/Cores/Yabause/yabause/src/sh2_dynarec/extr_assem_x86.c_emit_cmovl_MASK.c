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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  const_one ; 
 int /*<<< orphan*/  const_zero ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(u32 *addr,int rt)
{
  FUNC0("cmovl %x,%%%s",(int)addr,regname[rt]);
  if(addr==&const_zero) FUNC0(" [zero]\n");
  else if(addr==&const_one) FUNC0(" [one]\n");
  else FUNC0("\n");
  FUNC1(0x0F);
  FUNC1(0x4C);
  FUNC2(0,5,rt);
  FUNC3((int)addr);
}
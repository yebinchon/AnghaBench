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
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(int rs1,int rs2,int rt)
{
  if(rs1==rt) {
    FUNC0("imul %%%s,%%%s\n",regname[rs2],regname[rt]);
    FUNC2(0x0F);
    FUNC2(0xAF);
    FUNC3(3,rs2,rt);
  }
  else
  {
    FUNC1(rs1,rt);
    FUNC4(rt,rs2,rt);
  }
}
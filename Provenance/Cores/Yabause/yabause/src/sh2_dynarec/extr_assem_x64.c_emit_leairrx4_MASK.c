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
 int EBP ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int imm,int rs1,int rs2,int rt)
{
  FUNC0("lea %x(%%%s,%%%s,4),%%%s\n",imm,regname[rs1],regname[rs2],regname[rt]);
  FUNC1(0x8D);
  if(imm!=0||rs1==EBP) {
    FUNC2(2,4,rt);
    FUNC3(2,rs2,rs1);
    FUNC4(imm);
  }else{
    FUNC2(0,4,rt);
    FUNC3(2,rs2,rs1);
  }
}
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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rs1,int rs2,int rt)
{
  if(rs1==rt) {
    FUNC0("add %%%s,%%%s\n",regname[rs2],regname[rs1]);
    FUNC1(0x01);
    FUNC2(3,rs1,rs2);
  }else if(rs2==rt) {
    FUNC0("add %%%s,%%%s\n",regname[rs1],regname[rs2]);
    FUNC1(0x01);
    FUNC2(3,rs2,rs1);
  }else {
    FUNC0("lea (%%%s,%%%s),%%%s\n",regname[rs1],regname[rs2],regname[rt]);
    FUNC1(0x8D);
    if(rs1!=EBP) {
      FUNC2(0,4,rt);
      FUNC3(0,rs2,rs1);
    }else if(rs2!=EBP) {
      FUNC2(0,4,rt);
      FUNC3(0,rs1,rs2);
    }else /* lea 0(,%ebp,2) */{
      FUNC2(0,4,rt);
      FUNC3(1,EBP,5);
      FUNC4(0);
    }
  }
}
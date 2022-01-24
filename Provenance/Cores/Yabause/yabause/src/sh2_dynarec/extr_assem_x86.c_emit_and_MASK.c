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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(unsigned int rs1,unsigned int rs2,unsigned int rt)
{
  FUNC1(rs1<8);
  FUNC1(rs2<8);
  FUNC1(rt<8);
  if(rs1==rt) {
    FUNC0("and %%%s,%%%s\n",regname[rs2],regname[rt]);
    FUNC3(0x21);
    FUNC4(3,rs1,rs2);
  }
  else
  if(rs2==rt) {
    FUNC0("and %%%s,%%%s\n",regname[rs1],regname[rt]);
    FUNC3(0x21);
    FUNC4(3,rs2,rs1);
  }
  else {
    FUNC2(rs1,rt);
    FUNC5(rt,rs2,rt);
  }
}
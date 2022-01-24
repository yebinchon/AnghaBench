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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(unsigned int rs1,unsigned int rs2,unsigned int rt)
{
  if(rs1==rt&&rs2==rt) {FUNC2(rs1,14);FUNC4(14,14,rt);}
  else if(rs1==rt) {FUNC4(rs2,rs1,rt);}
  else {
    FUNC0("mul %s, %s, %s\n",regname[rt],regname[rs1],regname[rs2]);
    FUNC1(rs1<16);
    FUNC1(rs2<16);
    FUNC1(rt<16);
    FUNC3(0xe0000090|(rt<<16)|(rs2<<8)|rs1);
  }
}
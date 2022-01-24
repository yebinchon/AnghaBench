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
struct regstat {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (char,char) ; 
 int /*<<< orphan*/  FUNC2 (char,char) ; 
 int /*<<< orphan*/  FUNC3 (char,char) ; 
 int /*<<< orphan*/  FUNC4 (char,char) ; 
 char FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* opcode2 ; 
 int /*<<< orphan*/ * rs1 ; 
 int /*<<< orphan*/ * rt1 ; 

void FUNC6(int i,struct regstat *i_regs)
{
  signed char s,t;
  t=FUNC5(i_regs->regmap,rt1[i]);
  //assert(t>=0);
  if(t>=0) {
    s=FUNC5(i_regs->regmap,rs1[i]);
    if(s>=0) {
      if(opcode2[i]==12) FUNC3(s,t);
      if(opcode2[i]==13) FUNC4(s,t);
      if(opcode2[i]==14) FUNC1(s,t);
      if(opcode2[i]==15) FUNC2(s,t);
    }
    else
    {
      FUNC0(rs1[i],t); // Fix - do byte/halfword loads?
      if(opcode2[i]==12) FUNC3(t,t);
      if(opcode2[i]==13) FUNC4(t,t);
      if(opcode2[i]==14) FUNC1(t,t);
      if(opcode2[i]==15) FUNC2(t,t);
    }
  }
}
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
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  FUNC0 (char,int,char) ; 
 int /*<<< orphan*/  FUNC1 (char,int,char) ; 
 char FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* opcode2 ; 
 int* opcode3 ; 
 int /*<<< orphan*/ * rt1 ; 

void FUNC3(int i,struct regstat *i_regs)
{
  signed char sr,t;
  sr=FUNC2(i_regs->regmap,SR);
  if(opcode2[i]==8) { // CLRT/SETT
    if(opcode3[i]==0) FUNC0(sr,~1,sr);
    if(opcode3[i]==1) FUNC1(sr,1,sr);
  }else
  if(opcode2[i]==9) { // MOVT
    t=FUNC2(i_regs->regmap,rt1[i]);
    if(t>=0)
      FUNC0(sr,1,t);
  }
}
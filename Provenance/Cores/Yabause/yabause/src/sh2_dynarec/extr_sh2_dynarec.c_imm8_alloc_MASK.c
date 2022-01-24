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
struct regstat {int dummy; } ;

/* Variables and functions */
 scalar_t__ SR ; 
 scalar_t__ TBIT ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct regstat*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct regstat*,scalar_t__) ; 
 int FUNC5 (struct regstat*,scalar_t__) ; 
 int* imm ; 
 scalar_t__ FUNC6 (struct regstat*,scalar_t__) ; 
 int* minimum_free_regs ; 
 int* opcode ; 
 int* opcode2 ; 
 scalar_t__* rs1 ; 
 scalar_t__* rt1 ; 
 int /*<<< orphan*/  FUNC7 (struct regstat*,scalar_t__,int) ; 

void FUNC8(struct regstat *current,int i)
{
  //if(rs1[i]>=0&&needed_again(rs1[i],i)) alloc_reg(current,i,rs1[i]);
  //else lt1[i]=rs1[i];
  FUNC0(current,i,rs1[i]);
  if(rt1[i]>=0&&rt1[i]!=TBIT) FUNC0(current,i,rt1[i]);
  if(opcode[i]==0x7) { // ADD
    if(FUNC6(current,rs1[i])) {
      int v=FUNC5(current,rs1[i]);
      FUNC7(current,rt1[i],v+imm[i]);
    }
    else FUNC3(current,rt1[i]);
  }
  else if(opcode[i]==0x8) { // CMP/EQ
    FUNC0(current,i,SR); // Liveness analysis on TBIT?
    FUNC4(current,SR);
    FUNC1(current,i,-1);
    minimum_free_regs[i]=1;
  }
  else if(opcode[i]==12) {
    if(opcode2[i]==8) { // TST
      FUNC0(current,i,SR); // Liveness analysis on TBIT?
      FUNC4(current,SR);
      FUNC1(current,i,-1);
      minimum_free_regs[i]=1;
    }else
    // AND/XOR/OR
    if(FUNC6(current,rs1[i])) {
      int v=FUNC5(current,rs1[i]);
      if(opcode2[i]==0x09) FUNC7(current,rt1[i],v&imm[i]);
      if(opcode2[i]==0x0a) FUNC7(current,rt1[i],v^imm[i]);
      if(opcode2[i]==0x0b) FUNC7(current,rt1[i],v|imm[i]);
    }
    else FUNC3(current,rt1[i]);
  }
  else { // opcode[i]==0xE
    FUNC2(opcode[i]==0xE);
    FUNC7(current,rt1[i],imm[i]); // MOV
  }
  if(rt1[i]>=0&&rt1[i]!=TBIT) FUNC4(current,rt1[i]);
}
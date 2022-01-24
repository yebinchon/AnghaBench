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
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regstat*,int /*<<< orphan*/ ) ; 
 int* minimum_free_regs ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int* opcode ; 
 int* opcode2 ; 
 int /*<<< orphan*/ * rs1 ; 
 int /*<<< orphan*/ * rs2 ; 
 int /*<<< orphan*/ * rt1 ; 

void FUNC5(struct regstat *current,int i)
{
  if(opcode[i]==2) {
    FUNC0(current,i,rs1[i]);
    FUNC0(current,i,rs2[i]);
    FUNC2(current,rs2[i]);
    if(opcode2[i]>8&&opcode2[i]<=11) { // AND/XOR/OR
      FUNC0(current,i,rt1[i]);
    }
    else  // TST or CMP/STR
    {
      FUNC0(current,i,SR); // Liveness analysis on TBIT?
      FUNC3(current,SR);
      //#ifdef __x86__ ?
      //#ifdef NEEDS_TEMP
      if(opcode2[i]==8) { // TST
        FUNC1(current,i,-1);
        minimum_free_regs[i]=1;
      }
      if(opcode2[i]==12) { // CMP/STR
        FUNC1(current,i,-1);
        minimum_free_regs[i]=1;
      }
    }
  }
  if(opcode[i]==3) {
    FUNC0(current,i,rs1[i]);
    FUNC0(current,i,rs2[i]);
    FUNC2(current,rs2[i]);
    if(opcode2[i]<8) { // CMP intructions
      FUNC0(current,i,SR); // Liveness analysis on TBIT?
      FUNC3(current,SR);
      FUNC1(current,i,-1);
      minimum_free_regs[i]=1;
    }else{ // ADD/SUB
      FUNC0(current,i,rt1[i]);
      if(opcode2[i]&3) {
        FUNC0(current,i,SR);
        FUNC3(current,SR);
        //#ifdef NEEDS_TEMP
        if((opcode2[i]&3)==3) {
          // Need a temporary register for ADDV/SUBV on x86
          FUNC1(current,i,-1);
          minimum_free_regs[i]=1;
        }
      }
    }
  }
  if(opcode[i]==4) { // DT/CMPPZ/CMPPL
    // Single operand forms
    FUNC0(current,i,rs1[i]);
    if(opcode2[i]==0) FUNC3(current,rt1[i]); // DT
    FUNC0(current,i,SR); // Liveness analysis on TBIT?
    FUNC3(current,SR);
    if(opcode2[i]>0) {
      FUNC1(current,i,-1);
      minimum_free_regs[i]=1;
    }
  }
  if(opcode[i]==6) { // NOT/NEG/NEGC
    if(FUNC4(rs1[i],i)) FUNC0(current,i,rs1[i]);
    FUNC0(current,i,rt1[i]);
    if(opcode2[i]==8||opcode2[i]==9) { // SWAP needs temp (?)
      FUNC1(current,i,-1);
      minimum_free_regs[i]=1;
    }
    if(opcode2[i]==10) {
      // NEGC sets T bit
      FUNC0(current,i,SR); // Liveness analysis on TBIT?
      FUNC3(current,SR);
    }
  }
  FUNC2(current,rs1[i]);
  FUNC2(current,rt1[i]);
  FUNC3(current,rt1[i]);
}
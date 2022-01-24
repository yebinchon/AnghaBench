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
struct regstat {long long u; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EAX ; 
 int EDX ; 
 int HOST_TEMPREG ; 
 long long MACH ; 
 long long MACL ; 
 long long SR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ,long long) ; 
 int* opcode ; 
 int* opcode2 ; 
 long long* rs1 ; 
 long long* rs2 ; 
 long long* rt1 ; 
 long long* rt2 ; 

void FUNC13(int i,struct regstat *i_regs)
{
  if(opcode[i]==0) {
    if(opcode2[i]==7) // MUL.L
    {
      int s1=FUNC12(i_regs->regmap,rs1[i]);
      int s2=FUNC12(i_regs->regmap,rs2[i]);
      int t=FUNC12(i_regs->regmap,MACL);
      if(t>=0) FUNC8(s1,s2,t);
    }
    if(opcode2[i]==8) // CLRMAC
    {
      int t1=FUNC12(i_regs->regmap,rt1[i]);
      int t2=FUNC12(i_regs->regmap,rt2[i]);
      if(!(i_regs->u&(1LL<<MACH))) 
        FUNC11(t1);
      if(!(i_regs->u&(1LL<<MACL))) 
        FUNC11(t2);
    }
    if(opcode2[i]==9) // DIV0U
    {
      int sr=FUNC12(i_regs->regmap,SR);
      FUNC1(sr,0xfe,sr);
    }
  }
  if(opcode[i]==2) {
    if(opcode2[i]==7) // DIV0S
    {
      int s1=FUNC12(i_regs->regmap,rs1[i]);
      int s2=FUNC12(i_regs->regmap,rs2[i]);
      int sr=FUNC12(i_regs->regmap,SR);
      int temp=FUNC12(i_regs->regmap,-1);
      FUNC0(s1>=0);
      FUNC0(s2>=0);
      FUNC0(sr>=0);
      FUNC2(s1,s2,sr,temp);
    }
    if(opcode2[i]==14||opcode2[i]==15) // MULU.W / MULS.W
    {
      int s1=FUNC12(i_regs->regmap,rs1[i]);
      int s2=FUNC12(i_regs->regmap,rs2[i]);
      int t=FUNC12(i_regs->regmap,MACL);
      #ifdef HOST_TEMPREG
      int temp=HOST_TEMPREG;
      #else
      int temp=FUNC12(i_regs->regmap,-1);
      #endif
      if(t>=0) {
        FUNC0(temp>=0);
        if(opcode2[i]==14) { // MULU.W
          FUNC6(s1,t);
          FUNC6(s2,temp);
        }else{ // MULS.W
          FUNC5(s1,t);
          FUNC5(s2,temp);
        }
        FUNC8(t,temp,t);
      }
      /* DEBUG
      emit_pusha();
      emit_pushreg(t);
      emit_pushreg(t);
      emit_pushreg(s2);
      emit_pushreg(s1);
      emit_call((int)debug_multiplication);
      emit_addimm(ESP,16,ESP);
      emit_popa();*/
    }
  }
  if(opcode[i]==3) {
    int s1=FUNC12(i_regs->regmap,rs1[i]);
    int s2=FUNC12(i_regs->regmap,rs2[i]);
    int th=FUNC12(i_regs->regmap,MACH);
    int tl=FUNC12(i_regs->regmap,MACL);
    if(th>=0) {
      // DMULU.L / DMULS.L
      #if defined(__i386__) || defined(__x86_64__)
      FUNC0(tl==EAX);
      FUNC0(th==EDX);
      FUNC0(s1!=EAX); // This would work only if s1 is clean or dead
      if(s1!=EAX) FUNC4(s1,EAX);
      if(opcode2[i]==5) FUNC7(s2); // DMULU.L
      if(opcode2[i]==13) FUNC3(s2); // DMULS.L
      #else
      if(opcode2[i]==5) emit_umull(s1,s2,th,tl); // DMULU.L
      if(opcode2[i]==13) emit_smull(s1,s2,th,tl); // DMULS.L
      #endif
    }else if(tl>=0) {
      // MACH is unneeded, 32-bit result only
      FUNC8(s1,s2,tl);
    }
    /* DEBUG
    emit_pusha();
    emit_pushreg(tl);
    emit_pushreg(th);
    emit_pushreg(s2);
    emit_pushreg(s1);
    emit_call((int)debug_multiplication);
    emit_addimm(ESP,16,ESP);
    emit_popa();*/
  }
}
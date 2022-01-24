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
 long long SR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (char,char,char) ; 
 int /*<<< orphan*/  FUNC3 (char,char,char) ; 
 int /*<<< orphan*/  FUNC4 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC5 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC6 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC7 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC8 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC9 (char,char,char) ; 
 int /*<<< orphan*/  FUNC10 (char,char) ; 
 int /*<<< orphan*/  FUNC11 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC12 (char,char) ; 
 int /*<<< orphan*/  FUNC13 (long long,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (char,char,char) ; 
 int /*<<< orphan*/  FUNC18 (int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC20 (char,char,char) ; 
 int /*<<< orphan*/  FUNC21 (char,char,char) ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 int /*<<< orphan*/  FUNC23 (char,char,char) ; 
 void* FUNC24 (int /*<<< orphan*/ ,long long) ; 
 int* opcode ; 
 int* opcode2 ; 
 long long* rs1 ; 
 long long* rs2 ; 
 long long* rt1 ; 

void FUNC25(int i,struct regstat *i_regs)
{
  if(opcode[i]==2) {
    if(opcode2[i]>=9&&opcode2[i]<=11) { // AND/XOR/OR
      signed char s,t;
      s=FUNC24(i_regs->regmap,rs1[i]);
      t=FUNC24(i_regs->regmap,rt1[i]);
      //assert(s>=0);
      if(t>=0) {
        if(opcode2[i]==9) FUNC3(s,t,t);
        if(opcode2[i]==10) FUNC23(rs1[i]>=0?s:t,t,t);
        if(opcode2[i]==11) FUNC17(s,t,t);
      }
    }
    else
    {
      signed char s1,s2,sr,temp;
      s1=FUNC24(i_regs->regmap,rs1[i]);
      s2=FUNC24(i_regs->regmap,rs2[i]);
      sr=FUNC24(i_regs->regmap,SR);
      temp=FUNC24(i_regs->regmap,-1);
      FUNC0(s1>=0);
      FUNC0(s2>=0);
      FUNC0(sr>=0);
      FUNC0(temp>=0); // Not needed for TST on ARM?
      if(opcode2[i]==8) { // TST
        FUNC19(s1,s2,sr,temp);
      }
      else if(opcode2[i]==12) { // CMP/STR
        FUNC11(s1,s2,sr,temp);
      }
    }
  }
  if(opcode[i]==3) { // ADD/SUB
    if(opcode2[i]<8) { // CMP
      signed char s1,s2,sr,temp;
      s1=FUNC24(i_regs->regmap,rs1[i]);
      s2=FUNC24(i_regs->regmap,rs2[i]);
      sr=FUNC24(i_regs->regmap,SR);
      temp=FUNC24(i_regs->regmap,-1);
      FUNC0(s1>=0);
      FUNC0(s2>=0);
      FUNC0(temp>=0);
      if(opcode2[i]==0) FUNC4(s1,s2,sr,temp);
      if(opcode2[i]==2) FUNC8(s1,s2,sr,temp);
      if(opcode2[i]==3) FUNC5(s1,s2,sr,temp);
      if(opcode2[i]==6) FUNC7(s1,s2,sr,temp);
      if(opcode2[i]==7) FUNC6(s1,s2,sr,temp);
    }
    else
    {
      signed char s,t,sr,temp;
      t=FUNC24(i_regs->regmap,rt1[i]);
      if(t>=0) {
        s=FUNC24(i_regs->regmap,rs1[i]);
        sr=FUNC24(i_regs->regmap,SR);
        temp=FUNC24(i_regs->regmap,-1);
        FUNC0(s>=0);
        //assert(s2==t);
        if(opcode2[i]==8) FUNC20(t,s,t);
        if(opcode2[i]==10) FUNC21(s,t,sr);
        //if(opcode2[i]==11) emit_subv(s,sr,temp);
        FUNC0(opcode2[i]!=11);
        if(opcode2[i]==12) FUNC1(s,t,t);
        if(opcode2[i]==14) FUNC2(s,t,sr);
        //if(opcode2[i]==15) emit_addv(s,sr,temp);
        FUNC0(opcode2[i]!=15);
      }
    }
  }
  if(opcode[i]==4) { // DT/CMPPZ/CMPPL
    signed char s,t,sr,temp;
    s=FUNC24(i_regs->regmap,rs1[i]);
    sr=FUNC24(i_regs->regmap,SR);
    FUNC0(s>=0);
    FUNC0(sr>=0);
    if(opcode2[i]==0) {
      t=FUNC24(i_regs->regmap,rt1[i]);
      FUNC0(t>=0); // FIXME - Liveness analysis
      FUNC0(s==t);
      FUNC12(s,sr);
    }
    else if(opcode2[i]==1) FUNC10(s,sr);
    else if(opcode2[i]==5) 
    {
      temp=FUNC24(i_regs->regmap,-1);
      FUNC9(s,sr,temp);
    }
  }
  if(opcode[i]==6) { // NOT/SWAP/NEG
    int s=FUNC24(i_regs->regmap,rs1[i]);
    int t=FUNC24(i_regs->regmap,rt1[i]);
    if(s<0) {
      // FIXME: Preload?
      FUNC13(rs1[i],t);
      s=t;
    }
    if(t>=0) {
      if(opcode2[i]==7) FUNC16(s,t);
      if(opcode2[i]==8) FUNC22(s,t);
      if(opcode2[i]==9) FUNC18(s,16,t);
      if(opcode2[i]==11) FUNC14(s,t);
    }
    if(opcode2[i]==10) { // NEGC
      int sr=FUNC24(i_regs->regmap,SR);
      if(i_regs->u&(1LL<<rt1[i])) t=-1;
      FUNC0(sr>=0);
      FUNC15(s,t,sr);
    }
  }
}
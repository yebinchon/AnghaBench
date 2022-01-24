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
struct regstat {char isdoingcp; int* regmap_entry; char wasdoingcp; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int SR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int** cpmap ; 
 int /*<<< orphan*/  FUNC1 (char,int,char) ; 
 int /*<<< orphan*/  FUNC2 (char,int,char) ; 
 int /*<<< orphan*/  FUNC3 (char,int,char,char) ; 
 int /*<<< orphan*/  FUNC4 (int,char) ; 
 int /*<<< orphan*/  FUNC5 (int,char) ; 
 int /*<<< orphan*/  FUNC6 (char,int,char) ; 
 int /*<<< orphan*/  FUNC7 (char,int,char,char) ; 
 int /*<<< orphan*/  FUNC8 (char,int,char) ; 
 char FUNC9 (int /*<<< orphan*/ ,int) ; 
 int* imm ; 
 int* opcode ; 
 int* opcode2 ; 
 int* rs1 ; 
 int* rt1 ; 

void FUNC10(int i,struct regstat *i_regs)
{
  if(opcode[i]==0x7) { // ADD
    signed char s,t;
    t=FUNC9(i_regs->regmap,rt1[i]);
    s=FUNC9(i_regs->regmap,rs1[i]);
    //assert(t>=0);
    FUNC0(s>=0);
    if(t>=0) {
      if(!((i_regs->isdoingcp>>t)&1)) {
        if(s<0) {
          if(i_regs->regmap_entry[t]!=rs1[i]) FUNC4(rs1[i],t);
          FUNC1(t,imm[i],t);
        }else{
          if(!((i_regs->wasdoingcp>>s)&1))
            FUNC1(s,imm[i],t);
          else
            FUNC5(cpmap[i][s]+imm[i],t);
        }
      }
    }
  }
  else if(opcode[i]==0x8) { // CMP/EQ
    signed char s,sr,temp;
    s=FUNC9(i_regs->regmap,rs1[i]);
    sr=FUNC9(i_regs->regmap,SR);
    temp=FUNC9(i_regs->regmap,-1);
    FUNC0(s>=0);
    FUNC0(sr>=0); // Liveness analysis?
    FUNC0(temp>=0);
    FUNC3(s,imm[i],sr,temp);
  }
  else if(opcode[i]==12) {
    if(opcode2[i]==8) { // TST
      signed char s,sr,temp;
      s=FUNC9(i_regs->regmap,rs1[i]);
      sr=FUNC9(i_regs->regmap,SR);
      temp=FUNC9(i_regs->regmap,-1);
      FUNC0(s>=0);
      FUNC0(sr>=0); // Liveness analysis?
      FUNC0(temp>=0);
      FUNC7(s,imm[i],sr,temp);
    }else{
      signed char s,t;
      t=FUNC9(i_regs->regmap,rt1[i]);
      s=FUNC9(i_regs->regmap,rs1[i]);
      if(t>=0 && !((i_regs->isdoingcp>>t)&1)) {
        if(opcode2[i]==9) //AND
        {
          if(s<0) {
            if(i_regs->regmap_entry[t]!=rs1[i]) FUNC4(rs1[i],t);
            FUNC2(t,imm[i],t);
          }else{
            if(!((i_regs->wasdoingcp>>s)&1))
              FUNC2(s,imm[i],t);
            else
              FUNC5(cpmap[i][s]&imm[i],t);
          }
        }
        else
        if(opcode2[i]==10) //XOR
        {
          if(s<0) {
            if(i_regs->regmap_entry[t]!=rs1[i]) FUNC4(rs1[i],t);
            FUNC8(t,imm[i],t);
          }else{
            if(!((i_regs->wasdoingcp>>s)&1))
              FUNC8(s,imm[i],t);
            else
              FUNC5(cpmap[i][s]^imm[i],t);
          }
        }
        else
        if(opcode2[i]==11) //OR
        {
          if(s<0) {
            if(i_regs->regmap_entry[t]!=rs1[i]) FUNC4(rs1[i],t);
            FUNC6(t,imm[i],t);
          }else{
            if(!((i_regs->wasdoingcp>>s)&1))
              FUNC6(s,imm[i],t);
            else
              FUNC5(cpmap[i][s]|imm[i],t);
          }
        }
      }
    }
  }
  else { // opcode[i]==0xE
    signed char t;
    FUNC0(opcode[i]==0xE);
    t=FUNC9(i_regs->regmap,rt1[i]);
    //assert(t>=0);
    if(t>=0) {
      if(!((i_regs->isdoingcp>>t)&1))
        FUNC5(imm[i]<<16,t);
    }
  }
}
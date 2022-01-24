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
 scalar_t__ SR ; 
 long long TBIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char,char) ; 
 int /*<<< orphan*/  FUNC2 (char,char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char,char) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char,char) ; 
 int /*<<< orphan*/  FUNC7 (char,int,char) ; 
 int /*<<< orphan*/  FUNC8 (char,char) ; 
 int /*<<< orphan*/  FUNC9 (char,int,char) ; 
 int /*<<< orphan*/  FUNC10 (char,char) ; 
 int /*<<< orphan*/  FUNC11 (char,char,int,char) ; 
 int /*<<< orphan*/  FUNC12 (char,int,char) ; 
 int /*<<< orphan*/  FUNC13 (char,char) ; 
 char FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int* opcode ; 
 int* opcode2 ; 
 int* opcode3 ; 
 scalar_t__* rs1 ; 
 scalar_t__* rs2 ; 
 scalar_t__* rt1 ; 

void FUNC15(int i,struct regstat *i_regs)
{
  if(opcode[i]==4) // SHL/SHR
  {
    if(opcode2[i]<8) {
      signed char s,t,sr;
      s=FUNC14(i_regs->regmap,rs1[i]);
      t=FUNC14(i_regs->regmap,rt1[i]);
      sr=FUNC14(i_regs->regmap,SR);
      FUNC0(s==t);
      if(opcode2[i]==0) // SHLL/SHAL
      {
        if(i_regs->u&(1LL<<TBIT)) FUNC9(s,1,s);
        else FUNC10(s,sr); // Is there any difference between SHLL and SHAL?
      }
      else if(opcode2[i]==1) // SHLR/SHAR
      {
        if(i_regs->u&(1LL<<TBIT)) {
          // Skip T bit if unneeded
          if(opcode3[i]==0) FUNC12(s,1,s);
          if(opcode3[i]==2) FUNC7(s,1,s);
        }else{
          // Set T bit
          if(opcode3[i]==0) FUNC13(s,sr);
          if(opcode3[i]==2) FUNC8(s,sr);
        }
      }
      else if(opcode2[i]==4) {// ROTL/ROTCL
        if(opcode3[i]==0) {
          if(i_regs->u&(1LL<<TBIT)) {
            FUNC3(s); // Skip T bit if unneeded
          }else{
            FUNC4(s,sr);
          }
        }
        if(opcode3[i]==2) FUNC1(s,sr);
      }
      else {
        FUNC0(opcode2[i]==5); // ROTR/ROTCR
        if(opcode3[i]==0) {
          if(i_regs->u&(1LL<<TBIT)) {
            FUNC5(s); // Skip T bit if unneeded
          }else{
            FUNC6(s,sr);
          }
        }
        if(opcode3[i]==2) FUNC2(s,sr);
      }
    }else{
      signed char s,t;
      s=FUNC14(i_regs->regmap,rs1[i]);
      t=FUNC14(i_regs->regmap,rt1[i]);
      //assert(t>=0);
      if(t>=0){
        if(opcode2[i]==8) // SHLL
        {
          if(opcode3[i]==0) FUNC9(s,2,t);
          if(opcode3[i]==1) FUNC9(s,8,t);
          if(opcode3[i]==2) FUNC9(s,16,t);
        }
        if(opcode2[i]==9) // SHLR
        {
          if(opcode3[i]==0) FUNC12(s,2,t);
          if(opcode3[i]==1) FUNC12(s,8,t);
          if(opcode3[i]==2) FUNC12(s,16,t);
        }
      }
    }
  }
  else if(opcode[i]==2) // XTRCT
  {
    signed char s,t,sr;
    s=FUNC14(i_regs->regmap,rs1[i]);
    t=FUNC14(i_regs->regmap,rt1[i]);
    FUNC0(rs2[i]==rt1[i]);
    FUNC11(t,s,16,t);
  }
}
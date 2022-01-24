#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct regstat {char* regmap; } ;
typedef  scalar_t__ pointer ;
struct TYPE_4__ {int /*<<< orphan*/  dirty; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  dirty; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCREG ; 
 int /*<<< orphan*/  CC_STUB ; 
 int CLOCK_DIVIDER ; 
 int HOST_CCREG ; 
 int /*<<< orphan*/  NODS ; 
 int /*<<< orphan*/  NOTTAKEN ; 
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  TAKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* ba ; 
 TYPE_2__* branch_regs ; 
 int* ccadj ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 scalar_t__* is_ds ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* opcode2 ; 
 scalar_t__ out ; 
 TYPE_1__* regs ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__* source ; 
 int start ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC20(int i,struct regstat *i_regs)
{
  signed char *i_regmap=i_regs->regmap;
  int cc;
  int match;
  int sr;
  int unconditional=0,nop=0;
  int adj;
  int invert=0;
  int internal;
  match=FUNC17(regs[i].regmap,regs[i].dirty,ba[i]);
  FUNC2("match=%d\n",match);
  internal=FUNC15(ba[i]);
  if(i==(ba[i]-start)>>1) FUNC2("idle loop\n");
  if(!match) invert=1;
  #ifdef CORTEX_A8_BRANCH_PREDICTION_HACK
  if(i>(ba[i]-start)>>1) invert=1;
  #endif
  sr=FUNC14(i_regmap,SR);
  FUNC3(sr>=0);
  cc=FUNC14(i_regmap,CCREG);
  FUNC3(cc==HOST_CCREG);
  FUNC4(i,regs[i].regmap,&adj,start+i*2,NODS,invert);
  if(unconditional) 
    FUNC19(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
  if(unconditional) {
    FUNC4(i,branch_regs[i].regmap,&adj,ba[i],TAKEN,0);
    if(i!=(ba[i]-start)>>1 || source[i+1]!=0) {
      if(adj) FUNC6(cc,CLOCK_DIVIDER*(ccadj[i]+2-adj),cc);
      FUNC16(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
      if(internal)
        FUNC2("branch: internal\n");
      else
        FUNC2("branch: external\n");
      if(internal&&is_ds[(ba[i]-start)>>1]) {
        FUNC5(i);
      }
      else {
        FUNC1((int)out,ba[i],internal);
        FUNC10(0);
      }
      #ifdef CORTEX_A8_BRANCH_PREDICTION_HACK
      if(((u32)out)&7) emit_addnop(0);
      #endif
    }
  }
  else if(nop) {
    int jaddr;
    FUNC7(CLOCK_DIVIDER*(ccadj[i]+2),cc);
    jaddr=(int)out;
    FUNC12(0);
    FUNC0(CC_STUB,jaddr,(int)out,0,i,start+i*2+4,NOTTAKEN,0);
  }
  else {
    pointer taken=0,nottaken=0,nottaken1=0;
    //do_cc(i,regs[i].regmap,&adj,-1,0,invert);
    if(adj&&!invert) FUNC6(cc,CLOCK_DIVIDER*(ccadj[i]-adj),cc);
    
    //printf("branch(%d): eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\n",i,branch_regs[i].regmap[0],branch_regs[i].regmap[1],branch_regs[i].regmap[2],branch_regs[i].regmap[3],branch_regs[i].regmap[5],branch_regs[i].regmap[6],branch_regs[i].regmap[7]);
    FUNC13(sr,1);
    if(opcode2[i]==9) // BT
    {
      if(invert){
        nottaken=(pointer)out;
        FUNC9(1);
      }else{
        FUNC1((int)out,ba[i],internal);
        FUNC11(0);
      }
    }
    if(opcode2[i]==11) // BF
    {
      if(invert){
        nottaken=(pointer)out;
        FUNC11(1);
      }else{
        FUNC1((int)out,ba[i],internal);
        FUNC9(0);
      }
    }
    if(invert) {
      if(taken) FUNC18(taken,(pointer)out);
      #ifdef CORTEX_A8_BRANCH_PREDICTION_HACK
      if(match&&(!internal||!is_ds[(ba[i]-start)>>1])) {
        if(adj) {
          emit_addimm(cc,-CLOCK_DIVIDER*adj,cc);
          add_to_linker((int)out,ba[i],internal);
        }else{
          emit_addnop(13);
          add_to_linker((int)out,ba[i],internal*2);
        }
        emit_jmp(0);
      }else
      #endif
      {
        if(adj) FUNC6(cc,-CLOCK_DIVIDER*adj,cc);
        FUNC19(regs[i].regmap,regs[i].dirty,ba[i]);
        FUNC16(regs[i].regmap,regs[i].dirty,ba[i]);
        if(internal)
          FUNC2("branch: internal\n");
        else
          FUNC2("branch: external\n");
        if(internal&&is_ds[(ba[i]-start)>>1]) {
          FUNC5(i);
        }
        else {
          FUNC1((int)out,ba[i],internal);
          FUNC10(0);
        }
      }
      FUNC18(nottaken,(pointer)out);
    }

    //if(nottaken1) set_jump_target(nottaken1,(int)out);
    if(adj&&!invert) FUNC6(cc,CLOCK_DIVIDER*adj,cc);
  } // (!unconditional)
}
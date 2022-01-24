#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  long long u64 ;
typedef  int u32 ;
struct regstat {char* regmap; int /*<<< orphan*/  dirty; } ;
typedef  int pointer ;
struct TYPE_2__ {char* regmap; long long u; int /*<<< orphan*/  dirty; int /*<<< orphan*/  regmap_entry; } ;

/* Variables and functions */
 long long CCREG ; 
 int /*<<< orphan*/  CC_STUB ; 
 int CLOCK_DIVIDER ; 
 scalar_t__ COMPLEX ; 
 int HOST_CCREG ; 
 long long MACH ; 
 long long MACL ; 
 int /*<<< orphan*/  NODS ; 
 int /*<<< orphan*/  NOTTAKEN ; 
 long long SR ; 
 int /*<<< orphan*/  TAKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int* ba ; 
 struct regstat* branch_regs ; 
 int* ccadj ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (long long,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int FUNC17 (char*,long long) ; 
 int FUNC18 (int) ; 
 scalar_t__* is_ds ; 
 scalar_t__* itype ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,long long,long long,long long) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* ooo ; 
 int* opcode ; 
 int* opcode2 ; 
 scalar_t__ out ; 
 TYPE_1__* regs ; 
 long long* rs1 ; 
 long long* rs2 ; 
 long long* rs3 ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 scalar_t__* source ; 
 int start ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int /*<<< orphan*/ ,long long) ; 

void FUNC25(int i,struct regstat *i_regs)
{
  signed char *i_regmap=i_regs->regmap;
  int cc;
  int adj;
  int match;
  int sr;
  int unconditional=0,nop=0;
  int invert=0;
  int internal=FUNC18(ba[i]);
  match=FUNC21(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
  FUNC3("match=%d\n",match);
  internal=FUNC18(ba[i]);
  if(i==(ba[i]-start)>>1) FUNC3("idle loop\n");
  if(!match) invert=1;
  #ifdef CORTEX_A8_BRANCH_PREDICTION_HACK
  if(i>(ba[i]-start)>>1) invert=1;
  #endif
  
  if(ooo[i]) {
    sr=FUNC17(branch_regs[i].regmap,SR);
  }
  else {
    sr=FUNC17(i_regmap,SR);
  }

  cc=FUNC17(i_regmap,CCREG);
  FUNC4(cc==HOST_CCREG);

  if(ooo[i]) {
    u64 bc_unneeded;
    // Out of order execution (delay slot first)
    //printf("OOOE\n");
    FUNC5(i,regs[i].regmap,&adj,start+i*2,NODS,invert);
    FUNC2(i+1,i_regs,regs[i].regmap_entry);
    FUNC6(i+1,i_regs);
    bc_unneeded=regs[i].u;
    bc_unneeded&=~((1LL<<rs1[i])|(1LL<<rs2[i]));
    FUNC24(regs[i].regmap,branch_regs[i].regmap,regs[i].dirty,
                  bc_unneeded);
    FUNC19(regs[i].regmap,branch_regs[i].regmap,CCREG,SR,SR);
    cc=FUNC17(branch_regs[i].regmap,CCREG);
    FUNC4(cc==HOST_CCREG);
    if(unconditional) 
      FUNC23(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
    if(unconditional) {
      FUNC5(i,branch_regs[i].regmap,&adj,ba[i],TAKEN,0);
      if(i!=(ba[i]-start)>>1 || source[i+1]!=0) {
        if(adj) FUNC8(cc,CLOCK_DIVIDER*(ccadj[i]+2-adj),cc);
        FUNC20(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
        if(internal)
          FUNC3("branch: internal\n");
        else
          FUNC3("branch: external\n");
        if(internal&&is_ds[(ba[i]-start)>>1]) {
          FUNC7(i);
        }
        else {
          FUNC1((int)out,ba[i],internal);
          FUNC12(0);
        }
        #ifdef CORTEX_A8_BRANCH_PREDICTION_HACK
        if(((u32)out)&7) emit_addnop(0);
        #endif
      }
    }
    else if(nop) {
      int jaddr;
      FUNC9(CLOCK_DIVIDER*(ccadj[i]+2),cc);
      jaddr=(int)out;
      FUNC14(0);
      FUNC0(CC_STUB,jaddr,(int)out,0,i,start+i*2+4,NOTTAKEN,0);
    }
    else {
      pointer taken=0,nottaken=0,nottaken1=0;
      //do_cc(i,branch_regs[i].regmap,&adj,-1,0,invert);
      if(adj&&!invert) FUNC8(cc,CLOCK_DIVIDER*(ccadj[i]-adj),cc);
      
      //printf("branch(%d): eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\n",i,branch_regs[i].regmap[0],branch_regs[i].regmap[1],branch_regs[i].regmap[2],branch_regs[i].regmap[3],branch_regs[i].regmap[5],branch_regs[i].regmap[6],branch_regs[i].regmap[7]);
      FUNC4(sr>=0);
      FUNC16(sr,1);
      if(opcode2[i]==13) // BT/S
      {
        if(invert){
          nottaken=(pointer)out;
          FUNC11(1);
        }else{
          FUNC1((int)out,ba[i],internal);
          FUNC13(0);
        }
      }
      if(opcode2[i]==15) // BF/S
      {
        if(invert){
          nottaken=(pointer)out;
          FUNC13(1);
        }else{
          FUNC1((int)out,ba[i],internal);
          FUNC11(0);
        }
      }
      if(invert) {
        if(taken) FUNC22(taken,(pointer)out);
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
          if(adj) FUNC8(cc,-CLOCK_DIVIDER*adj,cc);
          FUNC23(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
          FUNC20(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
          if(internal)
            FUNC3("branch: internal\n");
          else
            FUNC3("branch: external\n");
          if(internal&&is_ds[(ba[i]-start)>>1]) {
            FUNC7(i);
          }
          else {
            FUNC1((int)out,ba[i],internal);
            FUNC12(0);
          }
        }
        FUNC22(nottaken,(pointer)out);
      }

      if(nottaken1) FUNC22(nottaken1,(pointer)out);
      if(adj&&!invert) FUNC8(cc,CLOCK_DIVIDER*adj,cc);
    } // (!unconditional)
  } // if(ooo)
  else
  {
    // In-order execution (branch first)
    //printf("IOE\n");
    u64 ds_unneeded;
    pointer taken=0,nottaken=0,nottaken1=0;
    FUNC5(i,regs[i].regmap,&adj,start+i*2,NODS,1);
    if(!unconditional&&!nop) {
      //printf("branch(%d): eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\n",i,branch_regs[i].regmap[0],branch_regs[i].regmap[1],branch_regs[i].regmap[2],branch_regs[i].regmap[3],branch_regs[i].regmap[5],branch_regs[i].regmap[6],branch_regs[i].regmap[7]);
      FUNC4(sr>=0);
      FUNC16(sr,1);
      if(opcode2[i]==13) // BT/S
      {
        nottaken=(pointer)out;
        FUNC11(2);
      }
      if(opcode2[i]==15) // BF/S
      {
        nottaken=(pointer)out;
        FUNC13(2);
      }
    } // if(!unconditional)
    ds_unneeded=regs[i].u;
    ds_unneeded&=~((1LL<<rs1[i+1])|(1LL<<rs2[i+1])|(1LL<<rs3[i+1]));
    // branch taken
    if(!nop) {
      if(taken) FUNC22(taken,(int)out);
      FUNC3("1:\n");
      FUNC24(regs[i].regmap,branch_regs[i].regmap,regs[i].dirty,
                    ds_unneeded);
      // load regs
      FUNC19(regs[i].regmap,branch_regs[i].regmap,rs1[i+1],rs2[i+1],rs3[i+1]);
      FUNC2(i+1,&branch_regs[i],0);
      if(itype[i+1]==COMPLEX) {
        if((opcode[i+1]|4)==4&&opcode2[i+1]==15) { // MAC.W/MAC.L
          FUNC19(regs[i].regmap,branch_regs[i].regmap,MACL,MACH,MACH);
        }
      }
      FUNC19(regs[i].regmap,branch_regs[i].regmap,CCREG,CCREG,CCREG);
      FUNC6(i+1,&branch_regs[i]);
      cc=FUNC17(branch_regs[i].regmap,CCREG);
      if(cc==-1) {
        FUNC15(CCREG,cc=HOST_CCREG);
        // CHECK: Is the following instruction (fall thru) allocated ok?
      }
      FUNC4(cc==HOST_CCREG);
      FUNC23(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
      //do_cc(i,i_regmap,&adj,ba[i],TAKEN,0);
      FUNC3("cycle count (adj)\n");
      /*if(adj)*/ //emit_addimm(cc,CLOCK_DIVIDER*(ccadj[i]+cycles[i]+cycles[i+1]-adj),cc);
      if(adj) FUNC8(cc,-CLOCK_DIVIDER*adj,cc);
      FUNC20(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
      if(internal)
        FUNC3("branch: internal\n");
      else
        FUNC3("branch: external\n");
      if(internal&&is_ds[(ba[i]-start)>>1]) {
        FUNC7(i);
      }
      else {
        FUNC1((int)out,ba[i],internal);
        FUNC12(0);
      }
    }
    // branch not taken
    if(!unconditional) {
      if(nottaken1) FUNC22(nottaken1,(int)out);
      FUNC22(nottaken,(int)out);
      FUNC3("2:\n");
      FUNC24(regs[i].regmap,branch_regs[i].regmap,regs[i].dirty,
                    ds_unneeded);
      FUNC19(regs[i].regmap,branch_regs[i].regmap,rs1[i+1],rs2[i+1],rs3[i+1]);
      FUNC2(i+1,&branch_regs[i],0);
      if(itype[i+1]==COMPLEX) {
        if((opcode[i+1]|4)==4&&opcode2[i+1]==15) { // MAC.W/MAC.L
          FUNC19(regs[i].regmap,branch_regs[i].regmap,MACL,MACH,MACH);
        }
      }
      FUNC19(regs[i].regmap,branch_regs[i].regmap,CCREG,CCREG,CCREG);
      FUNC6(i+1,&branch_regs[i]);
    }
  }
}
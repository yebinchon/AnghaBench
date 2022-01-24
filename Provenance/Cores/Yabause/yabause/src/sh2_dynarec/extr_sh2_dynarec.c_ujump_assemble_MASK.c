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
typedef  long long u64 ;
struct regstat {char* regmap; } ;
struct TYPE_4__ {scalar_t__* regmap; int /*<<< orphan*/  dirty; } ;
struct TYPE_3__ {scalar_t__* regmap; long long u; int /*<<< orphan*/  dirty; int /*<<< orphan*/  regmap_entry; } ;

/* Variables and functions */
 int CCREG ; 
 int CLOCK_DIVIDER ; 
 int EXCLUDE_REG ; 
 int HOST_CCREG ; 
 int HOST_REGS ; 
 int HOST_TEMPREG ; 
 long long PR ; 
 char PTEMP ; 
 int /*<<< orphan*/  TAKEN ; 
 int /*<<< orphan*/  FUNC0 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* ba ; 
 TYPE_2__* branch_regs ; 
 int* ccadj ; 
 int* cycles ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (scalar_t__*,int) ; 
 scalar_t__* hash_table ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__* is_ds ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,scalar_t__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ out ; 
 TYPE_1__* regs ; 
 long long* rs1 ; 
 long long* rs2 ; 
 long long* rs3 ; 
 long long* rt1 ; 
 long long* rt2 ; 
 int start ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,long long) ; 

void FUNC19(int i,struct regstat *i_regs)
{
  u64 bc_unneeded;
  int cc,adj;
  signed char *i_regmap=i_regs->regmap;
  if(i==(ba[i]-start)>>1) FUNC2("idle loop\n");
  FUNC1(i+1,i_regs,regs[i].regmap_entry);
  #ifdef REG_PREFETCH
  int temp=get_reg(branch_regs[i].regmap,PTEMP);
  if(rt1[i]==PR&&temp>=0) 
  {
    int return_address=start+i*2+4;
    if(get_reg(branch_regs[i].regmap,PR)>0) 
    if(i_regmap[temp]==PTEMP) emit_movimm((int)hash_table[((return_address>>16)^return_address)&0xFFFF],temp);
  }
  #endif
  if(rt1[i]==PR) {
    if(rt1[i+1]==PR||rt2[i+1]==PR) {
      // Delay slot abuse, set PR before executing delay slot
      int rt;
      unsigned int return_address;
      rt=FUNC13(regs[i].regmap,PR);
      return_address=start+i*2+4;
      FUNC3(rt>=0);
      if(rt>=0) {
        #ifdef REG_PREFETCH
        if(temp>=0) 
        {
          if(i_regmap[temp]!=PTEMP) emit_movimm((int)hash_table[((return_address>>16)^return_address)&0xFFFF],temp);
        }
        #endif
        FUNC10(return_address,rt); // PC into link register
      }
    }
  }
  FUNC6(i+1,i_regs);
  bc_unneeded=regs[i].u;
  bc_unneeded|=1LL<<rt1[i];
  FUNC18(regs[i].regmap,branch_regs[i].regmap,regs[i].dirty,
                bc_unneeded);
  FUNC15(regs[i].regmap,branch_regs[i].regmap,CCREG,CCREG,CCREG);
  if(rt1[i]==PR) {
    int rt;
    unsigned int return_address;
    FUNC3(rs1[i+1]!=PR);
    FUNC3(rs2[i+1]!=PR);
    FUNC3(rs3[i+1]!=PR);
    rt=FUNC13(branch_regs[i].regmap,PR);
    FUNC2("branch(%d): eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\n",i,branch_regs[i].regmap[0],branch_regs[i].regmap[1],branch_regs[i].regmap[2],branch_regs[i].regmap[3],branch_regs[i].regmap[5],branch_regs[i].regmap[6],branch_regs[i].regmap[7]);
    //assert(rt>=0);
    return_address=start+i*2+4;
    if(rt>=0&&rt1[i+1]!=PR&&rt2[i+1]!=PR) {
      #ifdef USE_MINI_HT
      if(internal_branch(return_address)) {
        int temp=rt+1;
        if(temp==EXCLUDE_REG||temp>=HOST_REGS||
           branch_regs[i].regmap[temp]>=0)
        {
          temp=get_reg(branch_regs[i].regmap,-1);
        }
        #ifdef HOST_TEMPREG
        if(temp<0) temp=HOST_TEMPREG;
        #endif
        if(temp>=0) do_miniht_insert(return_address,rt,temp);
        else emit_movimm(return_address,rt);
      }
      else
      #endif
      {
        #ifdef REG_PREFETCH
        if(temp>=0) 
        {
          if(i_regmap[temp]!=PTEMP) emit_movimm((int)hash_table[((return_address>>16)^return_address)&0xFFFF],temp);
        }
        #endif
        FUNC10(return_address,rt); // PC into link register
        #ifdef IMM_PREFETCH
        emit_prefetch(hash_table[((return_address>>16)^return_address)&0xFFFF]);
        #endif
      }
    }
  }
  cc=FUNC13(branch_regs[i].regmap,CCREG);
  FUNC3(cc==HOST_CCREG);
  FUNC17(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
  #ifdef REG_PREFETCH
  if(rt1[i]==PR&&temp>=0) emit_prefetchreg(temp);
  #endif
  FUNC4(i,branch_regs[i].regmap,&adj,ba[i],TAKEN,0);
  if(adj) FUNC8(cc,CLOCK_DIVIDER*(ccadj[i]+cycles[i]+cycles[i+1]-adj),cc);
  FUNC16(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
  if(FUNC14(ba[i]))
    FUNC2("branch: internal\n");
  else
    FUNC2("branch: external\n");
  if(FUNC14(ba[i])&&is_ds[(ba[i]-start)>>1]) {
    FUNC7(i);
  }
  else {
    FUNC0((int)out,ba[i],FUNC14(ba[i]));
    FUNC9(0);
  }
}
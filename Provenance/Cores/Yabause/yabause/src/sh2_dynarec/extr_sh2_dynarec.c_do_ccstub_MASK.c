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
typedef  int pointer ;
struct TYPE_4__ {int* regmap; int /*<<< orphan*/  dirty; } ;
struct TYPE_3__ {int* regmap; int wasdoingcp; int* regmap_entry; int /*<<< orphan*/  dirty; } ;

/* Variables and functions */
 int CCREG ; 
 int CLOCK_DIVIDER ; 
 scalar_t__ DUALIND ; 
 scalar_t__ GBRIND ; 
 size_t HOST_CCREG ; 
 scalar_t__ LOAD ; 
 int NODS ; 
 int NOTTAKEN ; 
 scalar_t__ RJUMP ; 
 scalar_t__ RTEMP ; 
 int /*<<< orphan*/  SLAVERA_REG ; 
 int TAKEN ; 
 scalar_t__* addrmode ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* ba ; 
 TYPE_2__* branch_regs ; 
 scalar_t__* bt ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ cc_interrupt ; 
 int* ccstub_return ; 
 int** cpmap ; 
 int /*<<< orphan*/  FUNC3 (size_t,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int*,scalar_t__) ; 
 int* imm ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__* itype ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (int*,int*) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  master_pc ; 
 scalar_t__* opcode ; 
 int* opcode2 ; 
 int* opcode3 ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int** regmap_pre ; 
 TYPE_1__* regs ; 
 scalar_t__* rs1 ; 
 scalar_t__* rt1 ; 
 scalar_t__* rt2 ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 scalar_t__ slave ; 
 scalar_t__ slave_entry ; 
 int /*<<< orphan*/  slave_pc ; 
 int slen ; 
 int start ; 
 int** stubs ; 
 int /*<<< orphan*/  FUNC21 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int*,int /*<<< orphan*/ ,int) ; 

void FUNC23(int n)
{
  int i;
  FUNC14(256);
  FUNC0("do_ccstub %x\n",start+stubs[n][4]*2);
  FUNC20(stubs[n][1],(pointer)out);
  i=stubs[n][4];
  if(stubs[n][6]==NODS) {
    if(itype[i+1]==LOAD&&rs1[i+1]==rt1[i+1]&&addrmode[i+1]!=DUALIND&&addrmode[i+1]!=GBRIND) {
      int hr=FUNC12(regs[i].regmap,rs1[i+1]);
      if(hr>=0&&((regs[i].wasdoingcp>>hr)&1))
      {
        FUNC8(cpmap[i][hr],hr);
      }
    }
    FUNC21(regs[i].regmap_entry,regs[i].dirty);
  }
  else if(stubs[n][6]!=TAKEN) {
    FUNC21(branch_regs[i].regmap,branch_regs[i].dirty);
  }
  else {
    if(FUNC13(ba[i]))
      FUNC22(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
  }
  if(stubs[n][5]!=-1)
  {
    // Save PC as return address
    FUNC8(stubs[n][5],0);
    FUNC10(0,slave?(int)&slave_pc:(int)&master_pc);
  }
  else
  {
    // Return address is branch target
    if(itype[i]==RJUMP)
    {
      int r=FUNC12(branch_regs[i].regmap,rs1[i]);
      if(rs1[i]==rt1[i+1]||rs1[i]==rt2[i+1]) {
        r=FUNC12(branch_regs[i].regmap,RTEMP);
      }
      else if(opcode[i]==0&&opcode2[i]==3) {  // BSRF/BRAF
        r=FUNC12(branch_regs[i].regmap,RTEMP);
      }
      else if(opcode[i]==0&&opcode2[i]==11&&opcode3[i]==2) {  // RTE
        r=FUNC12(branch_regs[i].regmap,RTEMP);
      }
      FUNC10(r,slave?(int)&slave_pc:(int)&master_pc);
    }
    else {FUNC19("Unknown branch type in do_ccstub\n");FUNC11(1);}
  }
  // Update cycle count
  if(stubs[n][6]==NODS) FUNC1(regs[i].regmap[HOST_CCREG]==CCREG||regs[i].regmap[HOST_CCREG]==-1);
  else FUNC1(branch_regs[i].regmap[HOST_CCREG]==CCREG||branch_regs[i].regmap[HOST_CCREG]==-1);
  if(stubs[n][3]) FUNC3(HOST_CCREG,CLOCK_DIVIDER*stubs[n][3],HOST_CCREG);
  if(slave) {
    FUNC6(SLAVERA_REG);
    FUNC5((pointer)cc_interrupt);
  }
  else {
    FUNC4((pointer)slave_entry);
  }
  if(stubs[n][3]&&stubs[n][6]!=NODS) FUNC3(HOST_CCREG,-CLOCK_DIVIDER*stubs[n][3],HOST_CCREG);
  if(stubs[n][6]==TAKEN) {
    if(FUNC13(ba[i]))
      FUNC17(branch_regs[i].regmap,regs[(ba[i]-start)>>1].regmap_entry);
    else if(itype[i]==RJUMP) {
      if(FUNC12(branch_regs[i].regmap,RTEMP)>=0)
        FUNC9(slave?(int)&slave_pc:(int)&master_pc,FUNC12(branch_regs[i].regmap,RTEMP));
      else
        FUNC7(rs1[i],FUNC12(branch_regs[i].regmap,rs1[i]));
    }
  }else if(stubs[n][6]==NOTTAKEN) {
    if(i<slen-2) FUNC17(branch_regs[i].regmap,regmap_pre[i+2]);
    else FUNC15(branch_regs[i].regmap);
  }else{
    if(stubs[n][6]==NODS) {
      if(bt[i]||i==0) ccstub_return[i]=(pointer)out;
      else {
        if(stubs[n][3]) FUNC3(HOST_CCREG,-CLOCK_DIVIDER*stubs[n][3],HOST_CCREG);
        FUNC15(regs[i].regmap);
        FUNC16(regmap_pre[i],regs[i].regmap,i);
        if(itype[i+1]==LOAD&&rs1[i+1]==rt1[i+1]&&addrmode[i+1]!=DUALIND&&addrmode[i+1]!=GBRIND) {
          int hr=FUNC12(regs[i].regmap,rs1[i+1]);
          if(hr>=0&&((regs[i].wasdoingcp>>hr)&1))
          {
            #ifdef HOST_IMM_ADDR32
            if(!can_direct_read(cpmap[i][hr]+imm[i+1]))
            #endif
            {
              int value=cpmap[i][hr]+imm[i+1];
              if(FUNC2(value)) value=FUNC18(value);
              if((opcode2[i+1]&3)==0) value^=1; // byteswap for little-endian
              FUNC8(value,hr);
            }
          }
        }
        ccstub_return[i]=0;
      }
    }
    else FUNC15(branch_regs[i].regmap);
  }
  FUNC5(stubs[n][2]); // return address
}
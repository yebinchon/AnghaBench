
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pointer ;
struct TYPE_4__ {int* regmap; int dirty; } ;
struct TYPE_3__ {int* regmap; int wasdoingcp; int* regmap_entry; int dirty; } ;


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
 int SLAVERA_REG ;
 int TAKEN ;
 scalar_t__* addrmode ;
 int assem_debug (char*,int) ;
 int assert (int) ;
 int* ba ;
 TYPE_2__* branch_regs ;
 scalar_t__* bt ;
 scalar_t__ can_direct_read (int) ;
 scalar_t__ cc_interrupt ;
 int* ccstub_return ;
 int** cpmap ;
 int emit_addimm (size_t,int,size_t) ;
 int emit_call (int) ;
 int emit_jmp (int) ;
 int emit_load_return_address (int ) ;
 int emit_loadreg (scalar_t__,int) ;
 int emit_movimm (int,int) ;
 int emit_readword (int,int) ;
 int emit_writeword (int,int) ;
 int exit (int) ;
 int get_reg (int*,scalar_t__) ;
 int* imm ;
 scalar_t__ internal_branch (int) ;
 scalar_t__* itype ;
 int literal_pool (int) ;
 int load_all_regs (int*) ;
 int load_consts (int*,int*,int) ;
 int load_needed_regs (int*,int*) ;
 int map_address (int) ;
 int master_pc ;
 scalar_t__* opcode ;
 int* opcode2 ;
 int* opcode3 ;
 scalar_t__ out ;
 int printf (char*) ;
 int** regmap_pre ;
 TYPE_1__* regs ;
 scalar_t__* rs1 ;
 scalar_t__* rt1 ;
 scalar_t__* rt2 ;
 int set_jump_target (int,int) ;
 scalar_t__ slave ;
 scalar_t__ slave_entry ;
 int slave_pc ;
 int slen ;
 int start ;
 int** stubs ;
 int wb_dirtys (int*,int ) ;
 int wb_needed_dirtys (int*,int ,int) ;

void do_ccstub(int n)
{
  int i;
  literal_pool(256);
  assem_debug("do_ccstub %x\n",start+stubs[n][4]*2);
  set_jump_target(stubs[n][1],(pointer)out);
  i=stubs[n][4];
  if(stubs[n][6]==NODS) {
    if(itype[i+1]==LOAD&&rs1[i+1]==rt1[i+1]&&addrmode[i+1]!=DUALIND&&addrmode[i+1]!=GBRIND) {
      int hr=get_reg(regs[i].regmap,rs1[i+1]);
      if(hr>=0&&((regs[i].wasdoingcp>>hr)&1))
      {
        emit_movimm(cpmap[i][hr],hr);
      }
    }
    wb_dirtys(regs[i].regmap_entry,regs[i].dirty);
  }
  else if(stubs[n][6]!=TAKEN) {
    wb_dirtys(branch_regs[i].regmap,branch_regs[i].dirty);
  }
  else {
    if(internal_branch(ba[i]))
      wb_needed_dirtys(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
  }
  if(stubs[n][5]!=-1)
  {

    emit_movimm(stubs[n][5],0);
    emit_writeword(0,slave?(int)&slave_pc:(int)&master_pc);
  }
  else
  {

    if(itype[i]==RJUMP)
    {
      int r=get_reg(branch_regs[i].regmap,rs1[i]);
      if(rs1[i]==rt1[i+1]||rs1[i]==rt2[i+1]) {
        r=get_reg(branch_regs[i].regmap,RTEMP);
      }
      else if(opcode[i]==0&&opcode2[i]==3) {
        r=get_reg(branch_regs[i].regmap,RTEMP);
      }
      else if(opcode[i]==0&&opcode2[i]==11&&opcode3[i]==2) {
        r=get_reg(branch_regs[i].regmap,RTEMP);
      }
      emit_writeword(r,slave?(int)&slave_pc:(int)&master_pc);
    }
    else {printf("Unknown branch type in do_ccstub\n");exit(1);}
  }

  if(stubs[n][6]==NODS) assert(regs[i].regmap[HOST_CCREG]==CCREG||regs[i].regmap[HOST_CCREG]==-1);
  else assert(branch_regs[i].regmap[HOST_CCREG]==CCREG||branch_regs[i].regmap[HOST_CCREG]==-1);
  if(stubs[n][3]) emit_addimm(HOST_CCREG,CLOCK_DIVIDER*stubs[n][3],HOST_CCREG);
  if(slave) {
    emit_load_return_address(SLAVERA_REG);
    emit_jmp((pointer)cc_interrupt);
  }
  else {
    emit_call((pointer)slave_entry);
  }
  if(stubs[n][3]&&stubs[n][6]!=NODS) emit_addimm(HOST_CCREG,-CLOCK_DIVIDER*stubs[n][3],HOST_CCREG);
  if(stubs[n][6]==TAKEN) {
    if(internal_branch(ba[i]))
      load_needed_regs(branch_regs[i].regmap,regs[(ba[i]-start)>>1].regmap_entry);
    else if(itype[i]==RJUMP) {
      if(get_reg(branch_regs[i].regmap,RTEMP)>=0)
        emit_readword(slave?(int)&slave_pc:(int)&master_pc,get_reg(branch_regs[i].regmap,RTEMP));
      else
        emit_loadreg(rs1[i],get_reg(branch_regs[i].regmap,rs1[i]));
    }
  }else if(stubs[n][6]==NOTTAKEN) {
    if(i<slen-2) load_needed_regs(branch_regs[i].regmap,regmap_pre[i+2]);
    else load_all_regs(branch_regs[i].regmap);
  }else{
    if(stubs[n][6]==NODS) {
      if(bt[i]||i==0) ccstub_return[i]=(pointer)out;
      else {
        if(stubs[n][3]) emit_addimm(HOST_CCREG,-CLOCK_DIVIDER*stubs[n][3],HOST_CCREG);
        load_all_regs(regs[i].regmap);
        load_consts(regmap_pre[i],regs[i].regmap,i);
        if(itype[i+1]==LOAD&&rs1[i+1]==rt1[i+1]&&addrmode[i+1]!=DUALIND&&addrmode[i+1]!=GBRIND) {
          int hr=get_reg(regs[i].regmap,rs1[i+1]);
          if(hr>=0&&((regs[i].wasdoingcp>>hr)&1))
          {



            {
              int value=cpmap[i][hr]+imm[i+1];
              if(can_direct_read(value)) value=map_address(value);
              if((opcode2[i+1]&3)==0) value^=1;
              emit_movimm(value,hr);
            }
          }
        }
        ccstub_return[i]=0;
      }
    }
    else load_all_regs(branch_regs[i].regmap);
  }
  emit_jmp(stubs[n][2]);
}

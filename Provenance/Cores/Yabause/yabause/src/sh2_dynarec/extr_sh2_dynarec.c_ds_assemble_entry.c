
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ pointer ;
struct TYPE_15__ {scalar_t__* regmap_entry; scalar_t__* regmap; int dirty; int wasdirty; } ;



 scalar_t__ CCREG ;




 size_t HOST_CCREG ;


 int MMREG ;
 int add_to_linker (int,int,scalar_t__) ;
 int address_generation (int,TYPE_1__*,scalar_t__*) ;
 int alu_assemble (int,TYPE_1__*) ;
 int assem_debug (char*,...) ;
 int assert (scalar_t__) ;
 int* ba ;
 int complex_assemble (int,TYPE_1__*) ;
 int emit_jmp (int ) ;
 int ext_assemble (int,TYPE_1__*) ;
 int flags_assemble (int,TYPE_1__*) ;
 int imm8_assemble (int,TYPE_1__*) ;
 scalar_t__* instr_addr ;
 scalar_t__ internal_branch (int) ;
 scalar_t__ is_delayslot ;
 int* itype ;
 int load_assemble (int,TYPE_1__*) ;
 int load_regs (scalar_t__*,scalar_t__*,int ,int ,int ) ;
 int load_regs_bt (scalar_t__*,int ,int) ;
 int mov_assemble (int,TYPE_1__*) ;
 int multdiv_assemble (int,TYPE_1__*) ;
 scalar_t__ out ;
 int pcrel_assemble (int,TYPE_1__*) ;
 int printf (char*) ;
 TYPE_1__* regs ;
 int rmw_assemble (int,TYPE_1__*) ;
 int * rs1 ;
 int * rs2 ;
 int * rs3 ;
 int shiftimm_assemble (int,TYPE_1__*) ;
 int start ;
 int store_assemble (int,TYPE_1__*) ;
 int store_regs_bt (scalar_t__*,int ,int) ;
 int wb_register (scalar_t__,scalar_t__*,int ) ;

void ds_assemble_entry(int i)
{
  int t=(ba[i]-start)>>1;
  if(!instr_addr[t]) instr_addr[t]=(pointer)out;
  assem_debug("Assemble delay slot at %x\n",ba[i]);
  assem_debug("<->\n");
  if(regs[t].regmap_entry[HOST_CCREG]==CCREG&&regs[t].regmap[HOST_CCREG]!=CCREG)
    wb_register(CCREG,regs[t].regmap_entry,regs[t].wasdirty);
  load_regs(regs[t].regmap_entry,regs[t].regmap,rs1[t],rs2[t],rs3[t]);
  address_generation(t,&regs[t],regs[t].regmap_entry);
  if(itype[t]==139||itype[t]==131)
    load_regs(regs[t].regmap_entry,regs[t].regmap,MMREG,MMREG,MMREG);
  is_delayslot=0;
  switch(itype[t]) {
    case 145:
      alu_assemble(t,&regs[t]);break;
    case 140:
      imm8_assemble(t,&regs[t]);break;
    case 133:
      shiftimm_assemble(t,&regs[t]);break;
    case 139:
      load_assemble(t,&regs[t]);break;
    case 131:
      store_assemble(t,&regs[t]);break;
    case 134:
      rmw_assemble(t,&regs[t]);break;
    case 136:
      pcrel_assemble(t,&regs[t]);break;
    case 137:
      multdiv_assemble(t,&regs[t]);break;
    case 138:
      mov_assemble(t,&regs[t]);break;
    case 142:
      ext_assemble(i,&regs[t]);break;
    case 141:
      flags_assemble(i,&regs[t]);break;
    case 143:
      complex_assemble(i,&regs[t]);break;
    case 129:
    case 130:
    case 128:
    case 135:
    case 144:
    case 132:
      printf("Jump in the delay slot.  This is probably a bug.\n");
  }
  store_regs_bt(regs[t].regmap,regs[t].dirty,ba[i]+2);
  load_regs_bt(regs[t].regmap,regs[t].dirty,ba[i]+2);
  if(internal_branch(ba[i]+2))
    assem_debug("branch: internal\n");
  else
    assem_debug("branch: external\n");
  assert(internal_branch(ba[i]+2));
  add_to_linker((int)out,ba[i]+2,internal_branch(ba[i]+2));
  emit_jmp(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long long u64 ;
typedef int u32 ;
struct regstat {char* regmap; int dirty; } ;
typedef int pointer ;
struct TYPE_2__ {char* regmap; long long u; int dirty; int regmap_entry; } ;


 long long CCREG ;
 int CC_STUB ;
 int CLOCK_DIVIDER ;
 scalar_t__ COMPLEX ;
 int HOST_CCREG ;
 long long MACH ;
 long long MACL ;
 int NODS ;
 int NOTTAKEN ;
 long long SR ;
 int TAKEN ;
 int add_stub (int ,int,int,int ,int,int,int ,int ) ;
 int add_to_linker (int,int,int) ;
 int address_generation (int,struct regstat*,int ) ;
 int assem_debug (char*,...) ;
 int assert (int) ;
 int* ba ;
 struct regstat* branch_regs ;
 int* ccadj ;
 int do_cc (int,char*,int*,int,int ,int) ;
 int ds_assemble (int,struct regstat*) ;
 int ds_assemble_entry (int) ;
 int emit_addimm (int,int,int) ;
 int emit_addimm_and_set_flags (int,int) ;
 int emit_addnop (int) ;
 int emit_jeq (int) ;
 int emit_jmp (int ) ;
 int emit_jne (int) ;
 int emit_jns (int ) ;
 int emit_loadreg (long long,int) ;
 int emit_testimm (int,int) ;
 int get_reg (char*,long long) ;
 int internal_branch (int) ;
 scalar_t__* is_ds ;
 scalar_t__* itype ;
 int load_regs (char*,char*,long long,long long,long long) ;
 int load_regs_bt (char*,int ,int) ;
 int match_bt (char*,int ,int) ;
 scalar_t__* ooo ;
 int* opcode ;
 int* opcode2 ;
 scalar_t__ out ;
 TYPE_1__* regs ;
 long long* rs1 ;
 long long* rs2 ;
 long long* rs3 ;
 int set_jump_target (int,int) ;
 scalar_t__* source ;
 int start ;
 int store_regs_bt (char*,int ,int) ;
 int wb_invalidate (char*,char*,int ,long long) ;

void sjump_assemble(int i,struct regstat *i_regs)
{
  signed char *i_regmap=i_regs->regmap;
  int cc;
  int adj;
  int match;
  int sr;
  int unconditional=0,nop=0;
  int invert=0;
  int internal=internal_branch(ba[i]);
  match=match_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
  assem_debug("match=%d\n",match);
  internal=internal_branch(ba[i]);
  if(i==(ba[i]-start)>>1) assem_debug("idle loop\n");
  if(!match) invert=1;




  if(ooo[i]) {
    sr=get_reg(branch_regs[i].regmap,SR);
  }
  else {
    sr=get_reg(i_regmap,SR);
  }

  cc=get_reg(i_regmap,CCREG);
  assert(cc==HOST_CCREG);

  if(ooo[i]) {
    u64 bc_unneeded;


    do_cc(i,regs[i].regmap,&adj,start+i*2,NODS,invert);
    address_generation(i+1,i_regs,regs[i].regmap_entry);
    ds_assemble(i+1,i_regs);
    bc_unneeded=regs[i].u;
    bc_unneeded&=~((1LL<<rs1[i])|(1LL<<rs2[i]));
    wb_invalidate(regs[i].regmap,branch_regs[i].regmap,regs[i].dirty,
                  bc_unneeded);
    load_regs(regs[i].regmap,branch_regs[i].regmap,CCREG,SR,SR);
    cc=get_reg(branch_regs[i].regmap,CCREG);
    assert(cc==HOST_CCREG);
    if(unconditional)
      store_regs_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
    if(unconditional) {
      do_cc(i,branch_regs[i].regmap,&adj,ba[i],TAKEN,0);
      if(i!=(ba[i]-start)>>1 || source[i+1]!=0) {
        if(adj) emit_addimm(cc,CLOCK_DIVIDER*(ccadj[i]+2-adj),cc);
        load_regs_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
        if(internal)
          assem_debug("branch: internal\n");
        else
          assem_debug("branch: external\n");
        if(internal&&is_ds[(ba[i]-start)>>1]) {
          ds_assemble_entry(i);
        }
        else {
          add_to_linker((int)out,ba[i],internal);
          emit_jmp(0);
        }



      }
    }
    else if(nop) {
      int jaddr;
      emit_addimm_and_set_flags(CLOCK_DIVIDER*(ccadj[i]+2),cc);
      jaddr=(int)out;
      emit_jns(0);
      add_stub(CC_STUB,jaddr,(int)out,0,i,start+i*2+4,NOTTAKEN,0);
    }
    else {
      pointer taken=0,nottaken=0,nottaken1=0;

      if(adj&&!invert) emit_addimm(cc,CLOCK_DIVIDER*(ccadj[i]-adj),cc);


      assert(sr>=0);
      emit_testimm(sr,1);
      if(opcode2[i]==13)
      {
        if(invert){
          nottaken=(pointer)out;
          emit_jeq(1);
        }else{
          add_to_linker((int)out,ba[i],internal);
          emit_jne(0);
        }
      }
      if(opcode2[i]==15)
      {
        if(invert){
          nottaken=(pointer)out;
          emit_jne(1);
        }else{
          add_to_linker((int)out,ba[i],internal);
          emit_jeq(0);
        }
      }
      if(invert) {
        if(taken) set_jump_target(taken,(pointer)out);
        {
          if(adj) emit_addimm(cc,-CLOCK_DIVIDER*adj,cc);
          store_regs_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
          load_regs_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
          if(internal)
            assem_debug("branch: internal\n");
          else
            assem_debug("branch: external\n");
          if(internal&&is_ds[(ba[i]-start)>>1]) {
            ds_assemble_entry(i);
          }
          else {
            add_to_linker((int)out,ba[i],internal);
            emit_jmp(0);
          }
        }
        set_jump_target(nottaken,(pointer)out);
      }

      if(nottaken1) set_jump_target(nottaken1,(pointer)out);
      if(adj&&!invert) emit_addimm(cc,CLOCK_DIVIDER*adj,cc);
    }
  }
  else
  {


    u64 ds_unneeded;
    pointer taken=0,nottaken=0,nottaken1=0;
    do_cc(i,regs[i].regmap,&adj,start+i*2,NODS,1);
    if(!unconditional&&!nop) {

      assert(sr>=0);
      emit_testimm(sr,1);
      if(opcode2[i]==13)
      {
        nottaken=(pointer)out;
        emit_jeq(2);
      }
      if(opcode2[i]==15)
      {
        nottaken=(pointer)out;
        emit_jne(2);
      }
    }
    ds_unneeded=regs[i].u;
    ds_unneeded&=~((1LL<<rs1[i+1])|(1LL<<rs2[i+1])|(1LL<<rs3[i+1]));

    if(!nop) {
      if(taken) set_jump_target(taken,(int)out);
      assem_debug("1:\n");
      wb_invalidate(regs[i].regmap,branch_regs[i].regmap,regs[i].dirty,
                    ds_unneeded);

      load_regs(regs[i].regmap,branch_regs[i].regmap,rs1[i+1],rs2[i+1],rs3[i+1]);
      address_generation(i+1,&branch_regs[i],0);
      if(itype[i+1]==COMPLEX) {
        if((opcode[i+1]|4)==4&&opcode2[i+1]==15) {
          load_regs(regs[i].regmap,branch_regs[i].regmap,MACL,MACH,MACH);
        }
      }
      load_regs(regs[i].regmap,branch_regs[i].regmap,CCREG,CCREG,CCREG);
      ds_assemble(i+1,&branch_regs[i]);
      cc=get_reg(branch_regs[i].regmap,CCREG);
      if(cc==-1) {
        emit_loadreg(CCREG,cc=HOST_CCREG);

      }
      assert(cc==HOST_CCREG);
      store_regs_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);

      assem_debug("cycle count (adj)\n");

      if(adj) emit_addimm(cc,-CLOCK_DIVIDER*adj,cc);
      load_regs_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
      if(internal)
        assem_debug("branch: internal\n");
      else
        assem_debug("branch: external\n");
      if(internal&&is_ds[(ba[i]-start)>>1]) {
        ds_assemble_entry(i);
      }
      else {
        add_to_linker((int)out,ba[i],internal);
        emit_jmp(0);
      }
    }

    if(!unconditional) {
      if(nottaken1) set_jump_target(nottaken1,(int)out);
      set_jump_target(nottaken,(int)out);
      assem_debug("2:\n");
      wb_invalidate(regs[i].regmap,branch_regs[i].regmap,regs[i].dirty,
                    ds_unneeded);
      load_regs(regs[i].regmap,branch_regs[i].regmap,rs1[i+1],rs2[i+1],rs3[i+1]);
      address_generation(i+1,&branch_regs[i],0);
      if(itype[i+1]==COMPLEX) {
        if((opcode[i+1]|4)==4&&opcode2[i+1]==15) {
          load_regs(regs[i].regmap,branch_regs[i].regmap,MACL,MACH,MACH);
        }
      }
      load_regs(regs[i].regmap,branch_regs[i].regmap,CCREG,CCREG,CCREG);
      ds_assemble(i+1,&branch_regs[i]);
    }
  }
}

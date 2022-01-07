
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct regstat {char* regmap; } ;
typedef scalar_t__ pointer ;
struct TYPE_4__ {int dirty; int regmap; } ;
struct TYPE_3__ {int dirty; int regmap; } ;


 int CCREG ;
 int CC_STUB ;
 int CLOCK_DIVIDER ;
 int HOST_CCREG ;
 int NODS ;
 int NOTTAKEN ;
 int SR ;
 int TAKEN ;
 int add_stub (int ,int,int,int ,int,int,int ,int ) ;
 int add_to_linker (int,int,int) ;
 int assem_debug (char*,...) ;
 int assert (int) ;
 int* ba ;
 TYPE_2__* branch_regs ;
 int* ccadj ;
 int do_cc (int,int ,int*,int,int ,int) ;
 int ds_assemble_entry (int) ;
 int emit_addimm (int,int,int) ;
 int emit_addimm_and_set_flags (int,int) ;
 int emit_addnop (int) ;
 int emit_jeq (int) ;
 int emit_jmp (int ) ;
 int emit_jne (int) ;
 int emit_jns (int ) ;
 int emit_testimm (int,int) ;
 int get_reg (char*,int ) ;
 int internal_branch (int) ;
 scalar_t__* is_ds ;
 int load_regs_bt (int ,int ,int) ;
 int match_bt (int ,int ,int) ;
 int* opcode2 ;
 scalar_t__ out ;
 TYPE_1__* regs ;
 int set_jump_target (scalar_t__,scalar_t__) ;
 scalar_t__* source ;
 int start ;
 int store_regs_bt (int ,int ,int) ;

void cjump_assemble(int i,struct regstat *i_regs)
{
  signed char *i_regmap=i_regs->regmap;
  int cc;
  int match;
  int sr;
  int unconditional=0,nop=0;
  int adj;
  int invert=0;
  int internal;
  match=match_bt(regs[i].regmap,regs[i].dirty,ba[i]);
  assem_debug("match=%d\n",match);
  internal=internal_branch(ba[i]);
  if(i==(ba[i]-start)>>1) assem_debug("idle loop\n");
  if(!match) invert=1;



  sr=get_reg(i_regmap,SR);
  assert(sr>=0);
  cc=get_reg(i_regmap,CCREG);
  assert(cc==HOST_CCREG);
  do_cc(i,regs[i].regmap,&adj,start+i*2,NODS,invert);
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


    emit_testimm(sr,1);
    if(opcode2[i]==9)
    {
      if(invert){
        nottaken=(pointer)out;
        emit_jeq(1);
      }else{
        add_to_linker((int)out,ba[i],internal);
        emit_jne(0);
      }
    }
    if(opcode2[i]==11)
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
        store_regs_bt(regs[i].regmap,regs[i].dirty,ba[i]);
        load_regs_bt(regs[i].regmap,regs[i].dirty,ba[i]);
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


    if(adj&&!invert) emit_addimm(cc,CLOCK_DIVIDER*adj,cc);
  }
}

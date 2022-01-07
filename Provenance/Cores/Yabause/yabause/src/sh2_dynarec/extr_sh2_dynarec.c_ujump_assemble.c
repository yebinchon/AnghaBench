
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long long u64 ;
struct regstat {char* regmap; } ;
struct TYPE_4__ {scalar_t__* regmap; int dirty; } ;
struct TYPE_3__ {scalar_t__* regmap; long long u; int dirty; int regmap_entry; } ;


 int CCREG ;
 int CLOCK_DIVIDER ;
 int EXCLUDE_REG ;
 int HOST_CCREG ;
 int HOST_REGS ;
 int HOST_TEMPREG ;
 long long PR ;
 char PTEMP ;
 int TAKEN ;
 int add_to_linker (int,int,scalar_t__) ;
 int address_generation (int,struct regstat*,int ) ;
 int assem_debug (char*,...) ;
 int assert (int) ;
 int* ba ;
 TYPE_2__* branch_regs ;
 int* ccadj ;
 int* cycles ;
 int do_cc (int,scalar_t__*,int*,int,int ,int ) ;
 int do_miniht_insert (unsigned int,int,int) ;
 int ds_assemble (int,struct regstat*) ;
 int ds_assemble_entry (int) ;
 int emit_addimm (int,int,int) ;
 int emit_jmp (int ) ;
 int emit_movimm (unsigned int,int) ;
 int emit_prefetch (scalar_t__) ;
 int emit_prefetchreg (int) ;
 int get_reg (scalar_t__*,int) ;
 scalar_t__* hash_table ;
 scalar_t__ internal_branch (int) ;
 scalar_t__* is_ds ;
 int load_regs (scalar_t__*,scalar_t__*,int,int,int) ;
 int load_regs_bt (scalar_t__*,int ,int) ;
 scalar_t__ out ;
 TYPE_1__* regs ;
 long long* rs1 ;
 long long* rs2 ;
 long long* rs3 ;
 long long* rt1 ;
 long long* rt2 ;
 int start ;
 int store_regs_bt (scalar_t__*,int ,int) ;
 int wb_invalidate (scalar_t__*,scalar_t__*,int ,long long) ;

void ujump_assemble(int i,struct regstat *i_regs)
{
  u64 bc_unneeded;
  int cc,adj;
  signed char *i_regmap=i_regs->regmap;
  if(i==(ba[i]-start)>>1) assem_debug("idle loop\n");
  address_generation(i+1,i_regs,regs[i].regmap_entry);
  if(rt1[i]==PR) {
    if(rt1[i+1]==PR||rt2[i+1]==PR) {

      int rt;
      unsigned int return_address;
      rt=get_reg(regs[i].regmap,PR);
      return_address=start+i*2+4;
      assert(rt>=0);
      if(rt>=0) {






        emit_movimm(return_address,rt);
      }
    }
  }
  ds_assemble(i+1,i_regs);
  bc_unneeded=regs[i].u;
  bc_unneeded|=1LL<<rt1[i];
  wb_invalidate(regs[i].regmap,branch_regs[i].regmap,regs[i].dirty,
                bc_unneeded);
  load_regs(regs[i].regmap,branch_regs[i].regmap,CCREG,CCREG,CCREG);
  if(rt1[i]==PR) {
    int rt;
    unsigned int return_address;
    assert(rs1[i+1]!=PR);
    assert(rs2[i+1]!=PR);
    assert(rs3[i+1]!=PR);
    rt=get_reg(branch_regs[i].regmap,PR);
    assem_debug("branch(%d): eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\n",i,branch_regs[i].regmap[0],branch_regs[i].regmap[1],branch_regs[i].regmap[2],branch_regs[i].regmap[3],branch_regs[i].regmap[5],branch_regs[i].regmap[6],branch_regs[i].regmap[7]);

    return_address=start+i*2+4;
    if(rt>=0&&rt1[i+1]!=PR&&rt2[i+1]!=PR) {
      {






        emit_movimm(return_address,rt);



      }
    }
  }
  cc=get_reg(branch_regs[i].regmap,CCREG);
  assert(cc==HOST_CCREG);
  store_regs_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);



  do_cc(i,branch_regs[i].regmap,&adj,ba[i],TAKEN,0);
  if(adj) emit_addimm(cc,CLOCK_DIVIDER*(ccadj[i]+cycles[i]+cycles[i+1]-adj),cc);
  load_regs_bt(branch_regs[i].regmap,branch_regs[i].dirty,ba[i]);
  if(internal_branch(ba[i]))
    assem_debug("branch: internal\n");
  else
    assem_debug("branch: external\n");
  if(internal_branch(ba[i])&&is_ds[(ba[i]-start)>>1]) {
    ds_assemble_entry(i);
  }
  else {
    add_to_linker((int)out,ba[i],internal_branch(ba[i]));
    emit_jmp(0);
  }
}

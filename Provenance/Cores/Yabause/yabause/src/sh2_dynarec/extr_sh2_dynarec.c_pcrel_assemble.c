
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regstat {scalar_t__* regmap; int isdoingcp; } ;


 scalar_t__ CCREG ;
 size_t HOST_CCREG ;
 unsigned int HOST_REGS ;
 int assem_debug (char*) ;
 int assert (int) ;
 int can_direct_read (int) ;
 int emit_movimm (int ,int) ;
 int emit_movswl (int ,int) ;
 int emit_movswl_indexed (int ,int,int) ;
 int emit_readword (int ,int) ;
 int emit_readword_indexed (int ,int,int) ;
 int emit_rorimm (int,int,int) ;
 int get_reg (scalar_t__*,int ) ;
 int* imm ;
 int map_address (int) ;
 int* opcode ;
 int * rt1 ;
 int start ;

void pcrel_assemble(int i,struct regstat *i_regs)
{
  int t,addr,map=-1,cache=-1;
  int offset;
  int jaddr=0;
  int memtarget,c=0,constaddr;
  unsigned int hr;
  u32 reglist=0;
  t=get_reg(i_regs->regmap,rt1[i]);
  offset=imm[i];
  for(hr=0;hr<HOST_REGS;hr++) {
    if(i_regs->regmap[hr]>=0) reglist|=1<<hr;
  }
  if(i_regs->regmap[HOST_CCREG]==CCREG) reglist&=~(1<<HOST_CCREG);
  if(t>=0) {
    if(!((i_regs->isdoingcp>>t)&1)) {
      int jaddr=0;

      assert(opcode[i]!=12);
      constaddr=((start+i*2+4)&~3)+imm[i];
      if(opcode[i]==9) constaddr=(start+i*2+4)+imm[i];
      assem_debug("Can't do constant propagation, doing PC-relatve load\n");



      reglist&=~(1<<t);

      assert(can_direct_read(constaddr));

      emit_movimm(map_address(constaddr),t);




      if(opcode[i]==9) {





        emit_movswl_indexed(0,t,t);


      }
      else {





        emit_readword_indexed(0,t,t);

        emit_rorimm(t,16,t);

      }
    }
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int regmap; } ;
typedef int pointer ;


 int CCREG ;
 int CLOCK_DIVIDER ;
 char HOST_CCREG ;
 int assert (int) ;
 int* ccadj ;
 int emit_addimm (char,int,char) ;
 int emit_call (int ) ;
 int emit_movimm (scalar_t__,int ) ;
 char get_reg (int ,int ) ;
 int is_delayslot ;
 scalar_t__ master_handle_bios ;
 scalar_t__ slave ;
 scalar_t__ slave_handle_bios ;
 scalar_t__ start ;

void bios_assemble(int i,struct regstat *i_regs)
{
  signed char ccreg=get_reg(i_regs->regmap,CCREG);
  assert(ccreg==HOST_CCREG);
  assert(!is_delayslot);
  emit_movimm(start+i*2,0);

  emit_addimm(HOST_CCREG,CLOCK_DIVIDER*ccadj[i],HOST_CCREG);
  if(slave)
    emit_call((pointer)slave_handle_bios);
  else
    emit_call((pointer)master_handle_bios);
}

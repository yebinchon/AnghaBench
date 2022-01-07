
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_TEMPREG ;
 int emit_adcimm (int,int ,int) ;
 int emit_adds (int ,int,int) ;
 int emit_movimm (int,int ) ;

void emit_addimm64_32(int rsh,int rsl,int imm,int rth,int rtl)
{


  emit_movimm(imm,HOST_TEMPREG);
  emit_adds(HOST_TEMPREG,rsl,rtl);
  emit_adcimm(rsh,0,rth);
}

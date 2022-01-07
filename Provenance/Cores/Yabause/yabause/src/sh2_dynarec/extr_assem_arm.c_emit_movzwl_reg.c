
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;

void emit_movzwl_reg(int rs, int rt)
{
  emit_andimm(rs,0xffff,rt);
}

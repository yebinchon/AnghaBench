
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pointer ;


 int emit_movimm (scalar_t__,unsigned int) ;
 scalar_t__ out ;

void emit_load_return_address(unsigned int rt)
{

  emit_movimm((pointer)out+10,rt);
}

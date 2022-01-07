
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_mov (int,unsigned int) ;

void emit_load_return_address(unsigned int rt)
{

  emit_mov(15,rt);


}

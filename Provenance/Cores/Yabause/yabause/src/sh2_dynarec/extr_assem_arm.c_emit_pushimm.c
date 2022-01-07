
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int) ;
 int assert (int ) ;

void emit_pushimm(int imm)
{
  assem_debug("push $%x\n",imm);
  assert(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*) ;
 int assert (int ) ;

void emit_popa()
{
  assem_debug("popa\n");
  assert(0);
}

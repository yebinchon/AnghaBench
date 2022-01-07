
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int assert (int ) ;
 int * regname ;

void emit_sarcl(int r)
{
  assem_debug("sar %%%s,%%cl\n",regname[r]);
  assert(0);
}

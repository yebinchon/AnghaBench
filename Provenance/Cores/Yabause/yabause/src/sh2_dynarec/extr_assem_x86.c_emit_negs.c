
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_neg (int,int) ;

void emit_negs(int rs, int rt)
{
  emit_neg(rs,rt);
}

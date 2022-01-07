
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_add (int,int,int) ;

void emit_adds(int rs1,int rs2,int rt)
{
  emit_add(rs1,rs2,rt);
}

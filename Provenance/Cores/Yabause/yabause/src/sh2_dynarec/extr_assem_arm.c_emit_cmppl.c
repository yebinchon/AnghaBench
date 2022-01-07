
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int emit_andimm (int,int,int) ;
 int emit_cmpimm (int,int ) ;
 int emit_orrgt_imm (int,int,int) ;

void emit_cmppl(int s, int sr, int temp)
{
  assert(temp>=0);
  emit_andimm(sr,~1,sr);
  emit_cmpimm(s,0);
  emit_orrgt_imm(sr,1,sr);
}

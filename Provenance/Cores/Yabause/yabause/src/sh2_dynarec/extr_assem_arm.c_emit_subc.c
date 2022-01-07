
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adc (int,int,int) ;
 int emit_lsrs_imm (int,int,int) ;
 int emit_sbcs (int,int,int) ;
 int emit_xorimm (int,int,int) ;

void emit_subc(int s, int t, int sr)
{
  emit_xorimm(sr,1,sr);
  emit_lsrs_imm(sr,1,sr);
  emit_sbcs(t,s,t);
  emit_adc(sr,sr,sr);
  emit_xorimm(sr,1,sr);
}

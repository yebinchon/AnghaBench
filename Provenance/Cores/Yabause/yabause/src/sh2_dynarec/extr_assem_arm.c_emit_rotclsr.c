
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adc (int,int,int) ;
 int emit_adcs (int,int,int) ;
 int emit_lsrs_imm (int,int,int) ;

void emit_rotclsr(int t, int sr)
{
  emit_lsrs_imm(sr,1,sr);
  emit_adcs(t,t,t);
  emit_adc(sr,sr,sr);
}

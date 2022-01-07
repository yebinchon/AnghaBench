
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pointer ;


 int assert (int) ;
 int emit_adc (int,int) ;
 int emit_addimm (int,int,int) ;
 int emit_jc (scalar_t__) ;
 int emit_mov (int,int) ;
 int emit_neg (int,int) ;
 int emit_not (int,int) ;
 int emit_shrimm (int,int,int) ;
 scalar_t__ out ;

void emit_negc(int rs, int rt, int sr)
{
  assert(rs>=0&&rs<8);
  if(rt<0) {
    emit_shrimm(sr,1,sr);
    emit_jc((pointer)out+10);
    emit_neg(rs,rs);
    emit_neg(rs,rs);
    emit_adc(sr,sr);
  }else{
    if(rs!=rt) emit_mov(rs,rt);
    emit_shrimm(sr,1,sr);
    emit_jc((pointer)out+9);
    emit_addimm(rt,-1,rt);
    emit_adc(sr,sr);
    emit_not(rt,rt);
  }
}

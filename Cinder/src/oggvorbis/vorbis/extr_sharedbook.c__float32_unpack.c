
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long VQ_FEXP_BIAS ;
 long VQ_FMAN ;
 float ldexp (double,long) ;

float _float32_unpack(long val){
  double mant=val&0x1fffff;
  int sign=val&0x80000000;
  long exp =(val&0x7fe00000L)>>VQ_FMAN;
  if(sign)mant= -mant;
  return(ldexp(mant,exp-(VQ_FMAN-1)-VQ_FEXP_BIAS));
}

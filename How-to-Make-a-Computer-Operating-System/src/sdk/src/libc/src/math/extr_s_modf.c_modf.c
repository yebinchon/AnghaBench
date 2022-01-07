
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int INSERT_WORDS (double,int,int) ;
 double one ;

double modf(double x, double *iptr) {
 int32_t i0,i1,j0;
 uint32_t i;
 EXTRACT_WORDS(i0,i1,x);
 j0 = ((i0>>20)&0x7ff)-0x3ff;
 if(j0<20) {
     if(j0<0) {
         INSERT_WORDS(*iptr,i0&0x80000000,0);
  return x;
     } else {
  i = (0x000fffff)>>j0;
  if(((i0&i)|i1)==0) {
      *iptr = x;
      INSERT_WORDS(x,i0&0x80000000,0);
      return x;
  } else {
      INSERT_WORDS(*iptr,i0&(~i),0);
      return x - *iptr;
  }
     }
 } else if (j0>51) {
     *iptr = x*one;

     if (j0 == 0x400 && ((i0 & 0xfffff) | i1))
       return x*one;
     INSERT_WORDS(x,i0&0x80000000,0);
     return x;
 } else {
     i = ((uint32_t)(0xffffffff))>>(j0-20);
     if((i1&i)==0) {
  *iptr = x;
  INSERT_WORDS(x,i0&0x80000000,0);
  return x;
     } else {
         INSERT_WORDS(*iptr,i0,i1&(~i));
  return x - *iptr;
     }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int comp_t ;


 int AHZ ;
 int EXPSIZE ;
 int MANTSIZE ;
 int MAXFRACT ;

comp_t
encode_comp_t(uint32_t s, uint32_t us)
{
 int exp, rnd;

 exp = 0;
 rnd = 0;
 s *= AHZ;
 s += us / (1000000 / AHZ);

 while (s > MAXFRACT) {
 rnd = s & (1 << (EXPSIZE - 1));
  s >>= EXPSIZE;
  exp++;
 }


 if (rnd && (++s > MAXFRACT)) {
  s >>= EXPSIZE;
  exp++;
 }


 exp <<= MANTSIZE;
 exp += s;
 return (exp);
}

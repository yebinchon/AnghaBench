
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ Rand32 () ;

UINT GenRandInterval(UINT min, UINT max)
{
 UINT a, b;

 a = MIN(min, max);
 b = MAX(min, max);

 if (a == b)
 {
  return a;
 }

 return (Rand32() % (b - a)) + a;
}

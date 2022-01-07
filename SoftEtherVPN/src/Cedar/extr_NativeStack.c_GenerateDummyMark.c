
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PRAND ;


 int PRandInt (int *) ;

UINT GenerateDummyMark(PRAND *p)
{
 UINT i;
 if (p == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  i = PRandInt(p);

  if (i >= 1000000000 && i <= 0x7FFFFFFE)
  {
   return i;
  }
 }

 return 0;
}

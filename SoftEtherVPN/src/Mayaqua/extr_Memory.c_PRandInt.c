
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PRAND ;


 int PRand (int *,int *,int) ;

UINT PRandInt(PRAND *p)
{
 UINT r;
 if (p == ((void*)0))
 {
  return 0;
 }

 PRand(p, &r, sizeof(UINT));

 return r;
}

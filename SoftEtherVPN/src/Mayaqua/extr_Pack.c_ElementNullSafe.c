
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dummy ;
typedef int ELEMENT ;


 int Zero (int *,int) ;

ELEMENT *ElementNullSafe(ELEMENT *p)
{
 static ELEMENT dummy;
 if (p == ((void*)0))
 {
  Zero(&dummy, sizeof(dummy));
  return &dummy;
 }
 return p;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSTEMTIME ;


 int SystemTime (int *) ;
 int SystemToLocal (int *,int *) ;

void LocalTime(SYSTEMTIME *st)
{
 SYSTEMTIME tmp;

 if (st == ((void*)0))
 {
  return;
 }

 SystemTime(&tmp);
 SystemToLocal(st, &tmp);
}

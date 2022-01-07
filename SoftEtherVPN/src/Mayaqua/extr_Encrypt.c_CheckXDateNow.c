
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;


 int CheckXDate (int *,int ) ;
 int SystemTime64 () ;

bool CheckXDateNow(X *x)
{

 if (x == ((void*)0))
 {
  return 0;
 }

 return CheckXDate(x, SystemTime64());
}

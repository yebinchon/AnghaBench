
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int LIST ;


 int Add (int *,int ) ;
 int CheckXDateNow (int *) ;
 int CloneX (int *) ;
 scalar_t__ IsXInCertList (int *,int *) ;

void AddXToCertList(LIST *o, X *x)
{

 if (o == ((void*)0) || x == ((void*)0))
 {
  return;
 }

 if (IsXInCertList(o, x))
 {
  return;
 }

 if (CheckXDateNow(x) == 0)
 {
  return;
 }

 Add(o, CloneX(x));
}

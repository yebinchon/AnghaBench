
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USER ;
typedef int HUB ;


 int * AcGetUser (int *,char*) ;
 scalar_t__ NO_ACCOUNT_DB (int *) ;
 int ReleaseUser (int *) ;

bool AcIsUser(HUB *h, char *name)
{
 USER *u;

 if (h == ((void*)0) || name == ((void*)0) || NO_ACCOUNT_DB(h))
 {
  return 0;
 }

 u = AcGetUser(h, name);
 if (u == ((void*)0))
 {
  return 0;
 }
 ReleaseUser(u);

 return 1;
}

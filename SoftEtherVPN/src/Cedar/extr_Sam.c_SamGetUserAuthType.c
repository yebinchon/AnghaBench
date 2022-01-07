
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AuthType; } ;
typedef TYPE_1__ USER ;
typedef int UINT ;
typedef int HUB ;


 TYPE_1__* AcGetUser (int *,char*) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int INFINITE ;
 int ReleaseUser (TYPE_1__*) ;

UINT SamGetUserAuthType(HUB *h, char *username)
{
 UINT authtype;

 if (h == ((void*)0) || username == ((void*)0))
 {
  return INFINITE;
 }

 AcLock(h);
 {
  USER *u = AcGetUser(h, username);
  if (u == ((void*)0))
  {
   authtype = INFINITE;
  }
  else
  {
   authtype = u->AuthType;
   ReleaseUser(u);
  }
 }
 AcUnlock(h);

 return authtype;
}

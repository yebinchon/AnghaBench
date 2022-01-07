
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ AuthType; int lock; } ;
typedef TYPE_1__ USER ;
typedef int HUB ;


 scalar_t__ AUTHTYPE_ANONYMOUS ;
 TYPE_1__* AcGetUser (int *,char*) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int Lock (int ) ;
 int ReleaseUser (TYPE_1__*) ;
 int Unlock (int ) ;

bool SamAuthUserByAnonymous(HUB *h, char *username)
{
 bool b = 0;

 if (h == ((void*)0) || username == ((void*)0))
 {
  return 0;
 }

 AcLock(h);
 {
  USER *u = AcGetUser(h, username);
  if (u)
  {
   Lock(u->lock);
   {
    if (u->AuthType == AUTHTYPE_ANONYMOUS)
    {
     b = 1;
    }
   }
   Unlock(u->lock);
  }
  ReleaseUser(u);
 }
 AcUnlock(h);

 return b;
}

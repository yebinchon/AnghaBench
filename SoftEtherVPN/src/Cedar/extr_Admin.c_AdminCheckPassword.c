
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_12__ {TYPE_1__* Server; int lock; } ;
struct TYPE_11__ {int lock; int HashedPassword; } ;
struct TYPE_10__ {scalar_t__ ServerType; int HashedPassword; } ;
typedef TYPE_2__ HUB ;
typedef TYPE_3__ CEDAR ;


 scalar_t__ Cmp (int *,void*,int) ;
 int ERR_ACCESS_DENIED ;
 int ERR_FARM_MEMBER_HUB_ADMIN ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NO_ERROR ;
 TYPE_2__* GetHub (TYPE_3__*,char*) ;
 int Lock (int ) ;
 int LockHubList (TYPE_3__*) ;
 int ReleaseHub (TYPE_2__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SHA1_SIZE ;
 int SecurePassword (int *,int ,void*) ;
 scalar_t__ SiIsEmptyPassword (int ) ;
 scalar_t__ StrLen (char*) ;
 int Unlock (int ) ;
 int UnlockHubList (TYPE_3__*) ;

UINT AdminCheckPassword(CEDAR *c, void *random, void *secure_password, char *hubname,
      bool accept_empty_password, bool *is_password_empty)
{
 UCHAR check[SHA1_SIZE];
 bool b_dummy;

 if (c == ((void*)0) || random == ((void*)0) || secure_password == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }
 if (is_password_empty == ((void*)0))
 {
  is_password_empty = &b_dummy;
 }

 *is_password_empty = 0;

 if (hubname == ((void*)0) || StrLen(hubname) == 0)
 {

  Lock(c->lock);
  {
   if (accept_empty_password && SiIsEmptyPassword(c->Server->HashedPassword))
   {

    *is_password_empty = 1;
   }

   SecurePassword(check, c->Server->HashedPassword, random);
  }
  Unlock(c->lock);

  if (Cmp(check, secure_password, SHA1_SIZE) != 0)
  {

   return ERR_ACCESS_DENIED;
  }
 }
 else
 {
  HUB *h;
  LockHubList(c);
  {
   h = GetHub(c, hubname);
  }
  UnlockHubList(c);

  if (h == ((void*)0))
  {

   return ERR_HUB_NOT_FOUND;
  }

  Lock(h->lock);
  {
   if (accept_empty_password && SiIsEmptyPassword(h->HashedPassword))
   {

    *is_password_empty = 1;
   }

   SecurePassword(check, h->HashedPassword, random);
  }
  Unlock(h->lock);

  ReleaseHub(h);

  if (Cmp(check, secure_password, SHA1_SIZE) != 0)
  {

   return ERR_ACCESS_DENIED;
  }
 }

 return ERR_NO_ERROR;
}

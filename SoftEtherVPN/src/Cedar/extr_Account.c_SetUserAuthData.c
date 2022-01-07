
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ AuthType; int lock; void* AuthData; } ;
typedef TYPE_1__ USER ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int NtLmSecureHash; int HashedKey; } ;
typedef TYPE_2__ AUTHPASSWORD ;


 scalar_t__ AUTHTYPE_ANONYMOUS ;
 scalar_t__ AUTHTYPE_PASSWORD ;
 scalar_t__ Cmp (int ,int ,int ) ;
 int Copy (int ,int ,int ) ;
 int FreeAuthData (scalar_t__,void*) ;
 scalar_t__ IsZero (int ,int ) ;
 int Lock (int ) ;
 int MD5_SIZE ;
 int SHA1_SIZE ;
 int Unlock (int ) ;

void SetUserAuthData(USER *u, UINT authtype, void *authdata)
{

 if (u == ((void*)0))
 {
  return;
 }
 if (authtype != AUTHTYPE_ANONYMOUS && authdata == ((void*)0))
 {
  return;
 }

 Lock(u->lock);
 {
  if (u->AuthType != AUTHTYPE_ANONYMOUS)
  {
   if (u->AuthType == AUTHTYPE_PASSWORD && authtype == AUTHTYPE_PASSWORD)
   {
    AUTHPASSWORD *pw_old = (AUTHPASSWORD *)u->AuthData;
    AUTHPASSWORD *pw_new = (AUTHPASSWORD *)authdata;




    if (Cmp(pw_old->HashedKey, pw_new->HashedKey, SHA1_SIZE) == 0)
    {
     if (IsZero(pw_new->NtLmSecureHash, MD5_SIZE))
     {
      Copy(pw_new->NtLmSecureHash, pw_old->NtLmSecureHash, MD5_SIZE);
     }
    }
   }


   FreeAuthData(u->AuthType, u->AuthData);
  }

  u->AuthType = authtype;
  u->AuthData = authdata;
 }
 Unlock(u->lock);
}

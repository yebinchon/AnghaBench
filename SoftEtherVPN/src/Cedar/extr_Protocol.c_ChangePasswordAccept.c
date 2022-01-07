
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int username ;
typedef int tmp ;
typedef int secure_old_password ;
typedef int new_password_ntlm ;
typedef int new_password ;
typedef int hubname ;
struct TYPE_15__ {scalar_t__ AuthType; int lock; scalar_t__ AuthData; TYPE_4__* Group; TYPE_2__* Policy; } ;
typedef TYPE_5__ USER ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_17__ {int * NtLmSecureHash; int * HashedKey; } ;
struct TYPE_16__ {int Name; TYPE_1__* FirstSock; int * Cedar; int * Random; } ;
struct TYPE_14__ {TYPE_3__* Policy; } ;
struct TYPE_13__ {int FixPassword; } ;
struct TYPE_12__ {int FixPassword; } ;
struct TYPE_11__ {int RemoteIP; } ;
typedef int PACK ;
typedef int HUB ;
typedef TYPE_6__ CONNECTION ;
typedef int CEDAR ;
typedef TYPE_7__ AUTHPASSWORD ;


 scalar_t__ AUTHTYPE_PASSWORD ;
 TYPE_5__* AcGetUser (int *,char*) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 scalar_t__ Cmp (int *,int *,int) ;
 int Copy (int *,int *,int) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NO_ERROR ;
 int ERR_OLD_PASSWORD_WRONG ;
 int ERR_PROTOCOL_ERROR ;
 int ERR_USER_AUTHTYPE_NOT_PASSWORD ;
 int * GetHub (int *,char*) ;
 scalar_t__ GetHubAdminOption (int *,char*) ;
 int HLog (int *,char*,int ,char*) ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ IsZero (int *,int) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int MAX_HUBNAME_LEN ;
 int MAX_SIZE ;
 int MAX_USERNAME_LEN ;
 int MD5_SIZE ;
 int PackGetData2 (int *,char*,int *,int) ;
 int PackGetStr (int *,char*,char*,int) ;
 int ReleaseHub (int *) ;
 int ReleaseUser (TYPE_5__*) ;
 int SHA1_SIZE ;
 int SecurePassword (int *,int *,int *) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int Zero (int *,int) ;

UINT ChangePasswordAccept(CONNECTION *c, PACK *p)
{
 CEDAR *cedar;
 UCHAR random[SHA1_SIZE];
 char hubname[MAX_HUBNAME_LEN + 1];
 char username[MAX_USERNAME_LEN + 1];
 UCHAR secure_old_password[SHA1_SIZE];
 UCHAR new_password[SHA1_SIZE];
 UCHAR new_password_ntlm[SHA1_SIZE];
 UCHAR check_secure_old_password[SHA1_SIZE];
 UINT ret = ERR_NO_ERROR;
 HUB *hub;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 Copy(random, c->Random, SHA1_SIZE);
 if (PackGetStr(p, "hubname", hubname, sizeof(hubname)) == 0 ||
  PackGetStr(p, "username", username, sizeof(username)) == 0 ||
  PackGetData2(p, "secure_old_password", secure_old_password, sizeof(secure_old_password)) == 0 ||
  PackGetData2(p, "new_password", new_password, sizeof(new_password)) == 0)
 {
  return ERR_PROTOCOL_ERROR;
 }

 if (PackGetData2(p, "new_password_ntlm", new_password_ntlm, MD5_SIZE) == 0)
 {
  Zero(new_password_ntlm, sizeof(new_password_ntlm));
 }

 cedar = c->Cedar;

 LockHubList(cedar);
 {
  hub = GetHub(cedar, hubname);
 }
 UnlockHubList(cedar);

 if (hub == ((void*)0))
 {
  ret = ERR_HUB_NOT_FOUND;
 }
 else
 {
  char tmp[MAX_SIZE];

  if (GetHubAdminOption(hub, "deny_change_user_password") != 0)
  {
   ReleaseHub(hub);
   return ERR_NOT_ENOUGH_RIGHT;
  }

  IPToStr(tmp, sizeof(tmp), &c->FirstSock->RemoteIP);
  HLog(hub, "LH_CHANGE_PASSWORD_1", c->Name, tmp);

  AcLock(hub);
  {
   USER *u = AcGetUser(hub, username);
   if (u == ((void*)0))
   {
    HLog(hub, "LH_CHANGE_PASSWORD_2", c->Name, username);
    ret = ERR_OLD_PASSWORD_WRONG;
   }
   else
   {
    Lock(u->lock);
    {
     if (u->AuthType != AUTHTYPE_PASSWORD)
     {

      HLog(hub, "LH_CHANGE_PASSWORD_3", c->Name, username);
      ret = ERR_USER_AUTHTYPE_NOT_PASSWORD;
     }
     else
     {
      bool fix_password = 0;
      if (u->Policy != ((void*)0))
      {
       fix_password = u->Policy->FixPassword;
      }
      else
      {
       if (u->Group != ((void*)0))
       {
        if (u->Group->Policy != ((void*)0))
        {
         fix_password = u->Group->Policy->FixPassword;
        }
       }
      }
      if (fix_password == 0)
      {

       AUTHPASSWORD *pw = (AUTHPASSWORD *)u->AuthData;

       SecurePassword(check_secure_old_password, pw->HashedKey, random);
       if (Cmp(check_secure_old_password, secure_old_password, SHA1_SIZE) != 0)
       {

        ret = ERR_OLD_PASSWORD_WRONG;
        HLog(hub, "LH_CHANGE_PASSWORD_4", c->Name, username);
       }
       else
       {

        if (Cmp(pw->HashedKey, new_password, SHA1_SIZE) != 0 || IsZero(pw->NtLmSecureHash, MD5_SIZE))
        {
         Copy(pw->HashedKey, new_password, SHA1_SIZE);
         Copy(pw->NtLmSecureHash, new_password_ntlm, MD5_SIZE);
        }
        HLog(hub, "LH_CHANGE_PASSWORD_5", c->Name, username);
       }
      }
      else
      {

       ret = ERR_NOT_ENOUGH_RIGHT;
      }
     }
    }
    Unlock(u->lock);

    ReleaseUser(u);
   }
  }
  AcUnlock(hub);
  ReleaseHub(hub);
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int mschap ;
typedef int client_response ;
typedef int challenge8 ;
struct TYPE_25__ {scalar_t__ AuthType; int lock; scalar_t__ AuthData; } ;
typedef TYPE_1__ USER ;
typedef scalar_t__ UINT ;
struct TYPE_26__ {void* MsChapV2_ClientResponse; int MsChapV2_PPPUsername; int MsChapV2_ServerChallenge; int MsChapV2_ClientChallenge; } ;
typedef TYPE_2__ UCHAR ;
struct TYPE_28__ {int NtLmSecureHash; int HashedKey; } ;
struct TYPE_27__ {int SecurePassword; } ;
typedef TYPE_2__ IPC_MSCHAP_V2_AUTHINFO ;
typedef TYPE_4__ HUB ;
typedef TYPE_5__ AUTHPASSWORD ;


 int ADMINISTRATOR_USERNAME ;
 scalar_t__ AUTHTYPE_PASSWORD ;
 TYPE_1__* AcGetUser (TYPE_4__*,char*) ;
 int AcLock (TYPE_4__*) ;
 int AcUnlock (TYPE_4__*) ;
 scalar_t__ Cmp (TYPE_2__*,void*,int) ;
 scalar_t__ ERR_MSCHAP2_PASSWORD_NEED_RESET ;
 int GenerateNtPasswordHashHash (TYPE_2__*,int ) ;
 scalar_t__ IsZero (int ,int ) ;
 int Lock (int ) ;
 int MD5_SIZE ;
 int MsChapV2Client_GenerateResponse (TYPE_2__*,TYPE_2__*,int ) ;
 int MsChapV2Server_GenerateResponse (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int MsChapV2_GenerateChallenge8 (TYPE_2__*,int ,int ,int ) ;
 int ParseAndExtractMsChapV2InfoFromPassword (TYPE_2__*,char*) ;
 int ReleaseUser (TYPE_1__*) ;
 int SHA1_SIZE ;
 int SecurePassword (TYPE_2__*,int ,void*) ;
 scalar_t__ StrCmpi (char*,int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_2__*,int) ;

bool SamAuthUserByPassword(HUB *h, char *username, void *random, void *secure_password, char *mschap_v2_password, UCHAR *mschap_v2_server_response_20, UINT *err)
{
 bool b = 0;
 UCHAR secure_password_check[SHA1_SIZE];
 bool is_mschap = 0;
 IPC_MSCHAP_V2_AUTHINFO mschap;
 UINT dummy = 0;

 if (h == ((void*)0) || username == ((void*)0) || secure_password == ((void*)0))
 {
  return 0;
 }
 if (err == ((void*)0))
 {
  err = &dummy;
 }

 *err = 0;

 Zero(&mschap, sizeof(mschap));

 is_mschap = ParseAndExtractMsChapV2InfoFromPassword(&mschap, mschap_v2_password);

 if (StrCmpi(username, ADMINISTRATOR_USERNAME) == 0)
 {

  SecurePassword(secure_password_check, h->SecurePassword, random);
  if (Cmp(secure_password_check, secure_password, SHA1_SIZE) == 0)
  {
   return 1;
  }
  else
  {
   return 0;
  }
 }

 AcLock(h);
 {
  USER *u;
  u = AcGetUser(h, username);
  if (u)
  {
   Lock(u->lock);
   {
    if (u->AuthType == AUTHTYPE_PASSWORD)
    {
     AUTHPASSWORD *auth = (AUTHPASSWORD *)u->AuthData;

     if (is_mschap == 0)
     {

      SecurePassword(secure_password_check, auth->HashedKey, random);
      if (Cmp(secure_password_check, secure_password, SHA1_SIZE) == 0)
      {
       b = 1;
      }
     }
     else
     {

      UCHAR challenge8[8];
      UCHAR client_response[24];

      if (IsZero(auth->NtLmSecureHash, MD5_SIZE))
      {

       *err = ERR_MSCHAP2_PASSWORD_NEED_RESET;
      }
      else
      {
       UCHAR nt_pw_hash_hash[16];
       Zero(challenge8, sizeof(challenge8));
       Zero(client_response, sizeof(client_response));

       MsChapV2_GenerateChallenge8(challenge8, mschap.MsChapV2_ClientChallenge, mschap.MsChapV2_ServerChallenge,
        mschap.MsChapV2_PPPUsername);

       MsChapV2Client_GenerateResponse(client_response, challenge8, auth->NtLmSecureHash);

       if (Cmp(client_response, mschap.MsChapV2_ClientResponse, 24) == 0)
       {

        b = 1;


        GenerateNtPasswordHashHash(nt_pw_hash_hash, auth->NtLmSecureHash);
        MsChapV2Server_GenerateResponse(mschap_v2_server_response_20, nt_pw_hash_hash,
         client_response, challenge8);
       }
      }
     }
    }
   }
   Unlock(u->lock);
   ReleaseUser(u);
  }
 }
 AcUnlock(h);

 return b;
}

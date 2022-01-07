
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef char wchar_t ;
typedef int suffix_filter_w ;
typedef int suffix_filter ;
typedef int radius_server_addr ;
typedef int radius_secret ;
typedef int nt_username ;
typedef int nt_name ;
typedef int nt_groupname ;
typedef int nt_domainname ;
typedef int name_and_realm ;
struct TYPE_21__ {scalar_t__ AuthType; char* GroupName; int lock; TYPE_1__* Policy; scalar_t__ AuthData; } ;
typedef TYPE_2__ USER ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_26__ {int * NtUsername; } ;
struct TYPE_25__ {int * RadiusUsername; } ;
struct TYPE_24__ {char* RadiusRealm; int lock; int Name; int ref; } ;
struct TYPE_23__ {int MsChapV2_ClientResponse; int MsChapV2_PPPUsername; int MsChapV2_ServerChallenge; int MsChapV2_ClientChallenge; } ;
struct TYPE_22__ {int Out_IsRadiusLogin; } ;
struct TYPE_20__ {int TimeOut; } ;
typedef TYPE_3__ RADIUS_LOGIN_OPTION ;
typedef TYPE_4__ IPC_MSCHAP_V2_AUTHINFO ;
typedef TYPE_5__ HUB ;
typedef int CONNECTION ;
typedef TYPE_6__ AUTHRADIUS ;
typedef TYPE_7__ AUTHNT ;


 scalar_t__ AUTHTYPE_NT ;
 scalar_t__ AUTHTYPE_RADIUS ;
 TYPE_2__* AcGetUser (TYPE_5__*,char*) ;
 int AcLock (TYPE_5__*) ;
 int AcUnlock (TYPE_5__*) ;
 int AddRef (int ) ;
 char* CopyStrToUni (char*) ;
 char* CopyUniStr (int *) ;
 int Debug (char*,int ,char*) ;
 int Free (char*) ;
 int GSF_DISABLE_RADIUS_AUTH ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 scalar_t__ GetRadiusServerEx2 (TYPE_5__*,char*,int,int*,char*,int,int*,char*,int) ;
 int HLog (TYPE_5__*,char*,char*) ;
 int IsEmptyStr (char*) ;
 int Lock (int ) ;
 int MAX_SIZE ;
 int MsChapV2Server_GenerateResponse (int *,int *,int ,int *) ;
 int MsChapV2_GenerateChallenge8 (int *,int ,int ,int ) ;
 int MsCheckLogon (char*,char*) ;
 int MsPerformMsChapV2AuthByLsa (char*,int *,int ,int *) ;
 int ParseAndExtractMsChapV2InfoFromPassword (TYPE_4__*,char*) ;
 int ParseNtUsername (char*,char*,int,char*,int,int) ;
 int RadiusLogin (int *,char*,int,char*,int ,char*,char*,int,int *,TYPE_3__*,int ) ;
 int ReleaseHub (TYPE_5__*) ;
 int ReleaseUser (TYPE_2__*) ;
 int SmbCheckLogon (char*,char*,char*,char*,int) ;
 int SmbPerformMsChapV2Auth (char*,char*,char*,int *,int ,int *,int) ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrToUni (char*,int,char*) ;
 scalar_t__ UniEndWith (char*,char*) ;
 scalar_t__ UniIsEmptyStr (char*) ;
 scalar_t__ UniStrLen (int *) ;
 int UniToStr (char*,int,char*) ;
 int Unlock (int ) ;
 int Zero (char*,int) ;

bool SamAuthUserByPlainPassword(CONNECTION *c, HUB *hub, char *username, char *password, bool ast, UCHAR *mschap_v2_server_response_20, RADIUS_LOGIN_OPTION *opt)
{
 bool b = 0;
 wchar_t *name = ((void*)0);
 wchar_t *groupname = ((void*)0);
 UINT timeout = 90;
 bool auth_by_nt = 0;
 HUB *h;

 if (hub == ((void*)0) || c == ((void*)0) || username == ((void*)0))
 {
  return 0;
 }

 if (GetGlobalServerFlag(GSF_DISABLE_RADIUS_AUTH) != 0)
 {
  return 0;
 }

 h = hub;

 AddRef(h->ref);


 AcLock(hub);
 {
  USER *u;
  u = AcGetUser(hub, ast == 0 ? username : "*");
  if (u)
  {
   Lock(u->lock);
   {
    if (u->AuthType == AUTHTYPE_RADIUS)
    {

     AUTHRADIUS *auth = (AUTHRADIUS *)u->AuthData;
     if (ast || auth->RadiusUsername == ((void*)0) || UniStrLen(auth->RadiusUsername) == 0)
     {
      if( IsEmptyStr(h->RadiusRealm) == 0 )
      {
       char name_and_realm[MAX_SIZE];
       StrCpy(name_and_realm, sizeof(name_and_realm), username);
       StrCat(name_and_realm, sizeof(name_and_realm), "@");
       StrCat(name_and_realm, sizeof(name_and_realm), h->RadiusRealm);
       name = CopyStrToUni(name_and_realm);
      }
      else
      {
       name = CopyStrToUni(username);
      }
     }
     else
     {
      name = CopyUniStr(auth->RadiusUsername);
     }
     auth_by_nt = 0;
    }
    else if (u->AuthType == AUTHTYPE_NT)
    {

     AUTHNT *auth = (AUTHNT *)u->AuthData;
     if (ast || auth->NtUsername == ((void*)0) || UniStrLen(auth->NtUsername) == 0)
     {
      name = CopyStrToUni(username);
     }
     else
     {
      name = CopyUniStr(auth->NtUsername);
     }

     groupname = CopyStrToUni(u->GroupName);

     if (u->Policy)
     {
      timeout = u->Policy->TimeOut;
     }

     auth_by_nt = 1;
    }
   }
   Unlock(u->lock);
   ReleaseUser(u);
  }
 }
 AcUnlock(hub);

 if (name != ((void*)0))
 {
  if (auth_by_nt == 0)
  {

   char radius_server_addr[MAX_SIZE];
   UINT radius_server_port;
   char radius_secret[MAX_SIZE];
   char suffix_filter[MAX_SIZE];
   wchar_t suffix_filter_w[MAX_SIZE];
   UINT interval;

   Zero(suffix_filter, sizeof(suffix_filter));
   Zero(suffix_filter_w, sizeof(suffix_filter_w));


   if (GetRadiusServerEx2(hub, radius_server_addr, sizeof(radius_server_addr), &radius_server_port, radius_secret, sizeof(radius_secret), &interval, suffix_filter, sizeof(suffix_filter)))
   {
    Unlock(hub->lock);

    StrToUni(suffix_filter_w, sizeof(suffix_filter_w), suffix_filter);

    if (UniIsEmptyStr(suffix_filter_w) || UniEndWith(name, suffix_filter_w))
    {

     b = RadiusLogin(c, radius_server_addr, radius_server_port,
      radius_secret, StrLen(radius_secret),
      name, password, interval, mschap_v2_server_response_20, opt, hub->Name);

     if (b)
     {
      if (opt != ((void*)0))
      {
       opt->Out_IsRadiusLogin = 1;
      }
     }
    }

    Lock(hub->lock);
   }
   else
   {
    HLog(hub, "LH_NO_RADIUS_SETTING", name);
   }
  }
  else
  {
   IPC_MSCHAP_V2_AUTHINFO mschap;
   Unlock(hub->lock);

   char nt_name[MAX_SIZE];
   char nt_username[MAX_SIZE];
   char nt_groupname[MAX_SIZE];
   char nt_domainname[MAX_SIZE];
   UCHAR challenge8[8];
   UCHAR nt_pw_hash_hash[16];

   nt_groupname[0] = 0;

   UniToStr(nt_name, sizeof(nt_name), name);

   if (groupname != ((void*)0))
    UniToStr(nt_groupname, sizeof(nt_groupname), groupname);

   ParseNtUsername(nt_name, nt_username, sizeof(nt_username), nt_domainname, sizeof(nt_domainname), 0);

   if (ParseAndExtractMsChapV2InfoFromPassword(&mschap, password) == 0)
   {

    b = SmbCheckLogon(nt_username, password, nt_domainname, nt_groupname, timeout);
   }
   else
   {

    MsChapV2_GenerateChallenge8(challenge8, mschap.MsChapV2_ClientChallenge,
     mschap.MsChapV2_ServerChallenge,
     mschap.MsChapV2_PPPUsername);

    Debug("MsChapV2_PPPUsername = %s, nt_name = %s\n", mschap.MsChapV2_PPPUsername, nt_name);

    b = SmbPerformMsChapV2Auth(nt_username, nt_domainname, nt_groupname, challenge8, mschap.MsChapV2_ClientResponse, nt_pw_hash_hash, timeout);

    if (b)
    {
     if (mschap_v2_server_response_20 != ((void*)0))
     {
      MsChapV2Server_GenerateResponse(mschap_v2_server_response_20, nt_pw_hash_hash,
       mschap.MsChapV2_ClientResponse, challenge8);
     }
    }
   }

   Lock(hub->lock);

  }


  if( groupname != ((void*)0) )
   Free(groupname);
  Free(name);
 }

 ReleaseHub(h);

 return b;
}

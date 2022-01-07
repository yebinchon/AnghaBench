
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_22__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_16__ ;
typedef struct TYPE_24__ TYPE_15__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int p ;
struct TYPE_28__ {char* ServerName; int CurrentRetryCount; int RetryLimit; int RetryIntervalSec; int HideWindow; int ShowNoSavePassword; int NoSavePassword; int ProxyServer; char* Username; char* Password; scalar_t__ Type; int CancelEvent; void* Err; int AccountName; } ;
typedef TYPE_2__ UI_PASSWORD_DLG ;
typedef TYPE_2__ UI_CONNECTERROR_DLG ;
typedef int UINT ;
struct TYPE_33__ {int * ClientSession; int lock; int ClientOption; int ClientAuth; } ;
struct TYPE_32__ {TYPE_22__* Client; int CurrentActiveLinks; } ;
struct TYPE_31__ {void* LastError; } ;
struct TYPE_30__ {int LinkModeClient; int RetryFlag; int CurrentRetryCount; int Win32HideConnectWindow; int Halt; int RetryInterval; int Client_NoSavePassword; int ConnectSucceed; TYPE_8__* Account; void* ClientStatus; scalar_t__ ForceStopFlag; TYPE_7__* Cedar; TYPE_16__* ClientOption; TYPE_15__* ClientAuth; void* Err; int HaltEvent; TYPE_1__* Link; scalar_t__* NicDownOnDisconnect; scalar_t__ UserCanceled; scalar_t__ NextConnectionTime; TYPE_2__ ServerIP_CacheForNextConnect; int Win32HideNicInfoWindow; TYPE_4__* Thread; int ref; } ;
struct TYPE_29__ {int ref; } ;
struct TYPE_27__ {int DontSavePassword; } ;
struct TYPE_26__ {int Hub; scalar_t__ Halting; scalar_t__* StopAllLinkFlag; } ;
struct TYPE_25__ {int HideStatusWindow; int NumRetry; char* Hostname; char* ProxyUsername; char* ProxyPassword; char* ProxyName; int AccountName; int DeviceName; int HideNicInfoWindow; } ;
struct TYPE_24__ {scalar_t__ AuthType; char* Username; char* PlainPassword; int HashedPassword; } ;
typedef TYPE_4__ THREAD ;
typedef TYPE_5__ SESSION ;
typedef TYPE_6__ LINK ;
typedef int IP ;
typedef int CLIENT_OPTION ;
typedef TYPE_7__ CEDAR ;
typedef TYPE_8__ ACCOUNT ;


 scalar_t__ AUTHTYPE_PASSWORD ;
 scalar_t__ AUTHTYPE_RADIUS ;
 int AddRef (int ) ;
 scalar_t__ CLIENT_AUTHTYPE_PASSWORD ;
 scalar_t__ CLIENT_AUTHTYPE_PLAIN_PASSWORD ;
 int CLIENT_NOTIFY_ACCOUNT_CHANGED ;
 void* CLIENT_STATUS_CONNECTING ;
 void* CLIENT_STATUS_IDLE ;
 void* CLIENT_STATUS_RETRY ;
 int CLog (TYPE_22__*,char*,int ,int,...) ;
 int CiDecrementNumActiveSessions () ;
 int CiFreeClientAuth (int ) ;
 int CiIncrementNumActiveSessions () ;
 int CiSaveConfigurationFile (TYPE_22__*) ;
 int CncConnectErrorDlg (TYPE_5__*,TYPE_2__*) ;
 int CncPasswordDlg (TYPE_5__*,TYPE_2__*) ;
 int Copy (int ,TYPE_16__*,int) ;
 int CopyClientAuth (TYPE_15__*) ;
 int Count (int ) ;
 int Debug (char*,...) ;
 void* ERR_AUTH_FAILED ;
 void* ERR_DEVICE_DRIVER_ERROR ;
 void* ERR_HUB_IS_BUSY ;
 void* ERR_HUB_STOPPING ;
 void* ERR_LICENSE_ERROR ;
 void* ERR_PROXY_AUTH_FAILED ;
 void* ERR_TOO_MANY_USER_SESSION ;
 void* ERR_USER_CANCEL ;
 int GetUniErrorStr (void*) ;
 char* HIDDEN_PASSWORD ;
 int HLog (int ,char*,int ,int,...) ;
 int HashPassword (int ,char*,char*) ;
 scalar_t__ IsZero (int ,int) ;
 int Lock (int ) ;
 int MAX (int,int) ;
 int MAX_SIZE ;
 int MIN (int,int) ;
 int MsgBox (int *,int,int *) ;
 int NoticeThreadInit (TYPE_4__*) ;
 int Notify (TYPE_5__*,int ) ;
 int PrintSessionTotalDataSize (TYPE_5__*) ;
 int RETRY_INTERVAL_SPECIAL ;
 int Rand32 () ;
 int ReleaseSession (TYPE_5__*) ;
 int SessionConnect (TYPE_5__*) ;
 scalar_t__ StrCmp (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;
 int UniFormat (int *,int,int ,int ,void*,int ) ;
 int UniStrCpy (int ,int,int ) ;
 int UnixVLanSetState (int ,int) ;
 int Unlock (int ) ;
 int Wait (int ,int) ;
 int Zero (TYPE_2__*,int) ;
 int _E (void*) ;
 int _UU (char*) ;

void ClientThread(THREAD *t, void *param)
{
 SESSION *s;
 bool use_password_dlg;
 bool no_save_password = 0;
 bool is_vpngate_connection = 0;
 CEDAR *cedar;
 bool num_active_sessions_incremented = 0;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 Debug("ClientThread 0x%x Started.\n", t);

 s = (SESSION *)param;
 AddRef(s->ref);
 s->Thread = t;
 AddRef(t->ref);

 if (s->LinkModeClient == 0)
 {
  CiIncrementNumActiveSessions();
  num_active_sessions_incremented = 1;
 }

 NoticeThreadInit(t);

 cedar = s->Cedar;

 s->ClientStatus = CLIENT_STATUS_CONNECTING;
 s->RetryFlag = 1;
 s->CurrentRetryCount = 0;

 Notify(s, CLIENT_NOTIFY_ACCOUNT_CHANGED);

 if (s->Cedar->Client != ((void*)0))
 {
  no_save_password = s->Cedar->Client->DontSavePassword;
 }

 s->Win32HideConnectWindow = s->ClientOption->HideStatusWindow;
 s->Win32HideNicInfoWindow = s->ClientOption->HideNicInfoWindow;


 while (1)
 {
  Zero(&s->ServerIP_CacheForNextConnect, sizeof(IP));

  if (s->Link != ((void*)0) && ((*s->Link->StopAllLinkFlag) || s->Link->Halting))
  {
   s->Err = ERR_USER_CANCEL;
   break;
  }

  CLog(s->Cedar->Client, "LC_CONNECT_1", s->ClientOption->AccountName, s->CurrentRetryCount + 1);
  if (s->LinkModeClient && s->Link != ((void*)0))
  {
   HLog(s->Link->Hub, "LH_CONNECT_1", s->ClientOption->AccountName, s->CurrentRetryCount + 1);
  }

  Debug("Trying to Connect to Server... (%u / %u)\n", s->CurrentRetryCount + 0,
   s->ClientOption->NumRetry);




  s->NextConnectionTime = 0;


  s->ClientStatus = CLIENT_STATUS_CONNECTING;
  s->Halt = 0;
  SessionConnect(s);
  if (s->UserCanceled)
  {
   s->Err = ERR_USER_CANCEL;
  }
  Debug("Disconnected. Err = %u : %S\n", s->Err, _E(s->Err));

  PrintSessionTotalDataSize(s);

  CLog(s->Cedar->Client, "LC_CONNECT_ERROR", s->ClientOption->AccountName,
   GetUniErrorStr(s->Err), s->Err);
  if (s->LinkModeClient && s->Link != ((void*)0))
  {
   HLog(s->Link->Hub, "LH_CONNECT_ERROR", s->ClientOption->AccountName,
    GetUniErrorStr(s->Err), s->Err);
  }

  s->ClientStatus = CLIENT_STATUS_RETRY;

  if (s->Link != ((void*)0))
  {
   ((LINK *)s->Link)->LastError = s->Err;
  }

  if (s->Halt && (s->RetryFlag == 0) || s->ForceStopFlag)
  {

   if (s->Err == ERR_DEVICE_DRIVER_ERROR)
   {
   }
   break;
  }

  use_password_dlg = 0;

  if (s->Account != ((void*)0) && s->Cedar->Client != ((void*)0))
  {
  }



  if (use_password_dlg == 0)
  {
   UINT retry_interval = s->RetryInterval;

   if (s->LinkModeClient)
   {
    UINT current_num_links = Count(s->Cedar->CurrentActiveLinks);
    UINT max_retry_interval = MAX(1000 * current_num_links, retry_interval);

    retry_interval += retry_interval * MIN(s->CurrentRetryCount, 1000);
    retry_interval = MIN(retry_interval, max_retry_interval);


    if (retry_interval >= 1000 && retry_interval <= (60 * 60 * 1000))
    {
     retry_interval = (retry_interval * 8 / 10) + (Rand32() % (retry_interval * 4 / 10));
    }
   }

   if (s->Err == ERR_HUB_IS_BUSY || s->Err == ERR_LICENSE_ERROR ||
    s->Err == ERR_HUB_STOPPING || s->Err == ERR_TOO_MANY_USER_SESSION)
   {
    retry_interval = RETRY_INTERVAL_SPECIAL;
   }

   if (s->CurrentRetryCount >= s->ClientOption->NumRetry)
   {




    break;
   }




   Wait(s->HaltEvent, retry_interval);
  }
  else
  {
  }

SKIP:

  if (s->ConnectSucceed == 0)
  {
   s->CurrentRetryCount++;
  }

  if (s->ForceStopFlag)
  {
   break;
  }
 }

 Debug("Session Halt.\n");

 s->ClientStatus = CLIENT_STATUS_IDLE;


 if (s->Account != ((void*)0))
 {
  s->Account->ClientSession = ((void*)0);
  ReleaseSession(s);
 }

 Notify(s, CLIENT_NOTIFY_ACCOUNT_CHANGED);


 ReleaseSession(s);

 if (num_active_sessions_incremented)
 {
  CiDecrementNumActiveSessions();
 }
}

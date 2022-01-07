
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_16__ {TYPE_2__* Session; } ;
typedef TYPE_1__ VH ;
struct TYPE_19__ {scalar_t__ AuthType; int RetryInterval; int DeviceName; int UseCompress; int UseEncrypt; int MaxConnection; int * SecureSignProc; } ;
struct TYPE_18__ {scalar_t__ Id; scalar_t__ Param; } ;
struct TYPE_17__ {int ServerMode; int RetryInterval; int ClientModeAndUseVLan; int IsVPNClientAndVLAN_Win32; int VirtualHost; int LinkModeClient; int SecureNATMode; int BridgeMode; int* NicDownOnDisconnect; TYPE_12__* ClientOption; TYPE_12__* ClientAuth; int * Account; int ref; TYPE_3__* PacketAdapter; int * Link; int UseCompress; int UseEncrypt; int MaxConnection; int CancelList; int Cancel1; void* OldTraffic; void* TrafficLock; int HaltEvent; void* Traffic; int LastCommTime; int CreatedTime; int Name; int * Cedar; void* lock; int LoggingRecordCount; } ;
struct TYPE_15__ {int DisableQoS; int MaxConnection; int HalfConnection; scalar_t__ AuthType; scalar_t__ NumRetry; int DeviceName; int * ClientK; int * ClientX; scalar_t__ NoRoutingTracking; int AdditionalConnectionInterval; } ;
struct TYPE_14__ {int OsType; } ;
typedef int THREAD ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ PACKET_ADAPTER ;
typedef int LINK ;
typedef TYPE_4__ CLIENT_OPTION ;
typedef TYPE_4__ CLIENT_AUTH ;
typedef int CEDAR ;
typedef int ACCOUNT ;


 int AddRef (int ) ;
 int BRIDGE_DEVICE_NAME ;
 scalar_t__ CLIENT_AUTHTYPE_SECURE ;
 int ClientThread ;
 int * CloneK (int *) ;
 int * CloneX (int *) ;
 int Copy (TYPE_12__*,TYPE_4__*,int) ;
 int CopyStr (char*) ;
 int GSF_DISABLE_SESSION_RECONNECT ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 TYPE_11__* GetOsInfo () ;
 int LINK_DEVICE_NAME ;
 int MAKESURE (int,int ,int) ;
 int MAX (int ,int) ;
 int MAX_RETRY_INTERVAL ;
 int MIN_RETRY_INTERVAL ;
 void* Malloc (int) ;
 int NewCancel () ;
 int NewCancelList () ;
 int NewCounter () ;
 int NewEvent () ;
 void* NewLock () ;
 int NewRef () ;
 int * NewThread (int ,void*) ;
 void* NewTraffic () ;
 scalar_t__ OS_IS_WINDOWS_9X (int ) ;
 scalar_t__ PACKET_ADAPTER_ID_VLAN_WIN32 ;
 int ReleaseThread (int *) ;
 int SNAT_DEVICE_NAME ;
 scalar_t__ StrCmpi (int ,int ) ;
 scalar_t__ StrLen (int ) ;
 int Tick64 () ;
 int WaitThreadInit (int *) ;
 TYPE_2__* ZeroMalloc (int) ;

SESSION *NewClientSessionEx(CEDAR *cedar, CLIENT_OPTION *option, CLIENT_AUTH *auth, PACKET_ADAPTER *pa, ACCOUNT *account, bool *NicDownOnDisconnect)
{
 SESSION *s;
 THREAD *t;

 if (cedar == ((void*)0) || option == ((void*)0) || auth == ((void*)0) || pa == ((void*)0) ||
  (auth->AuthType == CLIENT_AUTHTYPE_SECURE && auth->SecureSignProc == ((void*)0)))
 {
  return ((void*)0);
 }


 s = ZeroMalloc(sizeof(SESSION));

 s->LoggingRecordCount = NewCounter();

 s->lock = NewLock();
 s->ref = NewRef();
 s->Cedar = cedar;
 s->ServerMode = 0;
 s->Name = CopyStr("CLIENT_SESSION");
 s->CreatedTime = s->LastCommTime = Tick64();
 s->Traffic = NewTraffic();
 s->HaltEvent = NewEvent();
 s->PacketAdapter = pa;
 s->TrafficLock = NewLock();
 s->OldTraffic = NewTraffic();
 s->Cancel1 = NewCancel();
 s->CancelList = NewCancelList();


 s->ClientOption = Malloc(sizeof(CLIENT_OPTION));
 Copy(s->ClientOption, option, sizeof(CLIENT_OPTION));

 if (GetGlobalServerFlag(GSF_DISABLE_SESSION_RECONNECT))
 {
  s->ClientOption->DisableQoS = 1;
  s->ClientOption->MaxConnection = 1;
  s->ClientOption->HalfConnection = 0;
 }

 s->MaxConnection = option->MaxConnection;
 s->UseEncrypt = option->UseEncrypt;
 s->UseCompress = option->UseCompress;


 s->RetryInterval = MAKESURE(option->RetryInterval, 0, 4000000) * 1000;
 s->RetryInterval = MAKESURE(s->RetryInterval, MIN_RETRY_INTERVAL, MAX_RETRY_INTERVAL);


 s->ClientOption->AdditionalConnectionInterval = MAX(s->ClientOption->AdditionalConnectionInterval, 1);


 s->ClientModeAndUseVLan = (StrLen(s->ClientOption->DeviceName) == 0) ? 0 : 1;

 if (s->ClientOption->NoRoutingTracking)
 {
  s->ClientModeAndUseVLan = 0;
 }

 if (pa->Id == PACKET_ADAPTER_ID_VLAN_WIN32)
 {
  s->IsVPNClientAndVLAN_Win32 = 1;
 }

 if (StrLen(option->DeviceName) == 0)
 {

  s->ClientModeAndUseVLan = 0;
  s->VirtualHost = 1;
 }

 if (OS_IS_WINDOWS_9X(GetOsInfo()->OsType))
 {

  s->ClientOption->HalfConnection = 0;
 }


 s->ClientAuth = Malloc(sizeof(CLIENT_AUTH));
 Copy(s->ClientAuth, auth, sizeof(CLIENT_AUTH));


 if (s->ClientAuth->ClientX != ((void*)0))
 {
  s->ClientAuth->ClientX = CloneX(s->ClientAuth->ClientX);
 }
 if (s->ClientAuth->ClientK != ((void*)0))
 {
  s->ClientAuth->ClientK = CloneK(s->ClientAuth->ClientK);
 }

 if (StrCmpi(s->ClientOption->DeviceName, LINK_DEVICE_NAME) == 0)
 {

  s->LinkModeClient = 1;
  s->Link = (LINK *)s->PacketAdapter->Param;
 }

 if (StrCmpi(s->ClientOption->DeviceName, SNAT_DEVICE_NAME) == 0)
 {

  s->SecureNATMode = 1;
 }

 if (StrCmpi(s->ClientOption->DeviceName, BRIDGE_DEVICE_NAME) == 0)
 {

  s->BridgeMode = 1;
 }

 if (s->VirtualHost)
 {
  VH *v = (VH *)s->PacketAdapter->Param;


  v->Session = s;
  AddRef(s->ref);
 }

 s->Account = account;

 if (s->ClientAuth->AuthType == CLIENT_AUTHTYPE_SECURE)
 {

  s->ClientOption->NumRetry = 0;
 }

 s->NicDownOnDisconnect = NicDownOnDisconnect;


 t = NewThread(ClientThread, (void *)s);
 WaitThreadInit(t);
 ReleaseThread(t);

 return s;
}

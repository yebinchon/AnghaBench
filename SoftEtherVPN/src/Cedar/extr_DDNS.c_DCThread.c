
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int last_t ;
typedef int ip ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {TYPE_1__* AzureClient; } ;
struct TYPE_10__ {int Halt; scalar_t__ NextRegisterTick_IPv4; scalar_t__ NextRegisterTick_IPv6; scalar_t__ NextGetMyIpTick_IPv4; scalar_t__ NextGetMyIpTick_IPv6; scalar_t__ Err_IPv4_GetMyIp; char* LastMyIPv4; scalar_t__ Err_IPv6_GetMyIp; char* LastMyIPv6; scalar_t__ Err_IPv4; scalar_t__ Err_IPv6; int KeyChanged; int Event; TYPE_2__* Cedar; int InternetSetting; } ;
struct TYPE_9__ {TYPE_4__* Server; } ;
struct TYPE_8__ {scalar_t__ DDnsTriggerInt; int IpStatusRevision; } ;
typedef int THREAD ;
typedef int INTERRUPT_MANAGER ;
typedef char INTERNET_SETTING ;
typedef int DDNS_CLIENT_STATUS ;
typedef TYPE_3__ DDNS_CLIENT ;


 int AddInterrupt (int *,scalar_t__) ;
 scalar_t__ Cmp (char*,int *,int) ;
 int Copy (char*,int *,int) ;
 void* DCGetMyIp (TYPE_3__*,int,char*,int,int *) ;
 int DCGetStatus (TYPE_3__*,int *) ;
 void* DCRegister (TYPE_3__*,int,int *,int *) ;
 int DDNS_GETMYIP_INTERVAL_NG_MAX ;
 int DDNS_GETMYIP_INTERVAL_NG_MIN ;
 int DDNS_GETMYIP_INTERVAL_OK_MAX ;
 int DDNS_GETMYIP_INTERVAL_OK_MIN ;
 int DDNS_REGISTER_INTERVAL_NG_MAX ;
 int DDNS_REGISTER_INTERVAL_NG_MIN ;
 int DDNS_REGISTER_INTERVAL_OK_MAX ;
 int DDNS_REGISTER_INTERVAL_OK_MIN ;
 int Debug (char*) ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeInterruptManager (int *) ;
 int FreeRouteChange (void*) ;
 scalar_t__ GenRandInterval (int ,int ) ;
 scalar_t__ GetHostIPAddressHash32 () ;
 scalar_t__ GetNextIntervalForInterrupt (int *) ;
 int IsEmptyStr (char*) ;
 scalar_t__ IsRouteChanged (void*) ;
 int MAX_SIZE ;
 scalar_t__ MIN (scalar_t__,int) ;
 int * NewInterruptManager () ;
 void* NewRouteChange () ;
 int SiApplyAzureConfig (TYPE_4__*,int *) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ Tick64 () ;
 int Wait (int ,scalar_t__) ;
 int Zero (char*,int) ;

void DCThread(THREAD *thread, void *param)
{
 DDNS_CLIENT *c;
 INTERRUPT_MANAGER *interrupt;
 UINT last_ip_hash = 0;
 void *route_change_poller = ((void*)0);
 bool last_time_ip_changed = 0;
 UINT last_azure_ddns_trigger_int = 0;
 UINT last_vgs_ddns_trigger_int = 0;
 UINT n;
 INTERNET_SETTING last_t;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 c = (DDNS_CLIENT *)param;

 interrupt = NewInterruptManager();

 route_change_poller = NewRouteChange();
 IsRouteChanged(route_change_poller);

 Zero(&last_t, sizeof(last_t));

 n = 0;

 while (c->Halt == 0)
 {
  UINT ip_hash = GetHostIPAddressHash32();
  UINT interval;
  UINT64 now = Tick64();
  bool ip_changed = 0;
  bool azure_client_triggered = 0;
  bool internet_setting_changed = 0;
  bool vgs_server_triggered = 0;


  if (c->Cedar->Server != ((void*)0) && c->Cedar->Server->AzureClient != ((void*)0))
  {
   if (c->Cedar->Server->AzureClient->DDnsTriggerInt != last_azure_ddns_trigger_int)
   {
    azure_client_triggered = 1;
    last_azure_ddns_trigger_int = c->Cedar->Server->AzureClient->DDnsTriggerInt;
    last_time_ip_changed = 0;
    Debug("DDNS Thread Triggered by AzureClient.\n");
   }
  }

  if (Cmp(&last_t, &c->InternetSetting, sizeof(INTERNET_SETTING)) != 0)
  {
   Copy(&last_t, &c->InternetSetting, sizeof(INTERNET_SETTING));
   internet_setting_changed = 1;
   last_time_ip_changed = 0;
  }

  if (ip_hash != last_ip_hash)
  {
   last_time_ip_changed = 0;
   Debug("DDNS Thread Triggered by IP Hash Changed.\n");
  }

  if ((ip_hash != last_ip_hash) || (IsRouteChanged(route_change_poller)) || azure_client_triggered || internet_setting_changed || vgs_server_triggered)
  {
   if (last_time_ip_changed == 0)
   {


    c->NextRegisterTick_IPv4 = 0;
    c->NextRegisterTick_IPv6 = 0;
    c->NextGetMyIpTick_IPv4 = 0;
    c->NextGetMyIpTick_IPv6 = 0;

    last_ip_hash = ip_hash;

    last_time_ip_changed = 1;

    ip_changed = 1;

    Debug("DDNS Internet Condition Changed.\n");
   }
  }
  else
  {
   last_time_ip_changed = 0;
  }

  if ((n++) >= 1)
  {

   if (c->NextGetMyIpTick_IPv4 == 0 || now >= c->NextGetMyIpTick_IPv4)
   {
    UINT next_interval;
    char ip[MAX_SIZE];

    Zero(ip, sizeof(ip));
    c->Err_IPv4_GetMyIp = DCGetMyIp(c, 0, ip, sizeof(ip), ((void*)0));

    if (c->Err_IPv4_GetMyIp == ERR_NO_ERROR)
    {
     if (StrCmpi(c->LastMyIPv4, ip) != 0)
     {
      ip_changed = 1;
      StrCpy(c->LastMyIPv4, sizeof(c->LastMyIPv4), ip);
     }

     next_interval = GenRandInterval(DDNS_GETMYIP_INTERVAL_OK_MIN, DDNS_GETMYIP_INTERVAL_OK_MAX);
    }
    else
    {
     if (IsEmptyStr(c->LastMyIPv4) == 0)
     {
      ip_changed = 1;
     }

     Zero(c->LastMyIPv4, sizeof(c->LastMyIPv4));
     next_interval = GenRandInterval(DDNS_GETMYIP_INTERVAL_NG_MIN, DDNS_GETMYIP_INTERVAL_NG_MAX);
    }

    c->NextGetMyIpTick_IPv4 = Tick64() + (UINT64)next_interval;

    AddInterrupt(interrupt, c->NextGetMyIpTick_IPv4);
   }


   if (c->NextGetMyIpTick_IPv6 == 0 || now >= c->NextGetMyIpTick_IPv6)
   {
    UINT next_interval;
    char ip[MAX_SIZE];

    Zero(ip, sizeof(ip));
    c->Err_IPv6_GetMyIp = DCGetMyIp(c, 1, ip, sizeof(ip), ((void*)0));

    if (c->Err_IPv6_GetMyIp == ERR_NO_ERROR)
    {
     if (StrCmpi(c->LastMyIPv6, ip) != 0)
     {
      ip_changed = 1;
      StrCpy(c->LastMyIPv6, sizeof(c->LastMyIPv6), ip);
     }

     next_interval = GenRandInterval(DDNS_GETMYIP_INTERVAL_OK_MIN, DDNS_GETMYIP_INTERVAL_OK_MAX);
    }
    else
    {
     if (IsEmptyStr(c->LastMyIPv6) == 0)
     {
      ip_changed = 1;
     }

     Zero(c->LastMyIPv6, sizeof(c->LastMyIPv6));
     next_interval = GenRandInterval(DDNS_GETMYIP_INTERVAL_NG_MIN, DDNS_GETMYIP_INTERVAL_NG_MAX);
    }

    c->NextGetMyIpTick_IPv6 = Tick64() + (UINT64)next_interval;

    AddInterrupt(interrupt, c->NextGetMyIpTick_IPv6);
   }
  }

  if (ip_changed)
  {
   c->NextRegisterTick_IPv4 = 0;
   c->NextRegisterTick_IPv6 = 0;
  }


  if (c->NextRegisterTick_IPv4 == 0 || now >= c->NextRegisterTick_IPv4)
  {
   UINT next_interval;

   c->Err_IPv4 = DCRegister(c, 0, ((void*)0), ((void*)0));

   if (c->Err_IPv4 == ERR_NO_ERROR)
   {
    next_interval = GenRandInterval(DDNS_REGISTER_INTERVAL_OK_MIN, DDNS_REGISTER_INTERVAL_OK_MAX);
   }
   else
   {
    next_interval = GenRandInterval(DDNS_REGISTER_INTERVAL_NG_MIN, DDNS_REGISTER_INTERVAL_NG_MAX);
   }


   c->NextRegisterTick_IPv4 = Tick64() + (UINT64)next_interval;

   if (1)
   {
    DDNS_CLIENT_STATUS st;

    DCGetStatus(c, &st);

    SiApplyAzureConfig(c->Cedar->Server, &st);
   }

   AddInterrupt(interrupt, c->NextRegisterTick_IPv4);
  }

  if (c->Halt)
  {
   break;
  }


  if (c->NextRegisterTick_IPv6 == 0 || now >= c->NextRegisterTick_IPv6)
  {
   UINT next_interval;

   c->Err_IPv6 = DCRegister(c, 1, ((void*)0), ((void*)0));

   if (c->Err_IPv6 == ERR_NO_ERROR)
   {
    next_interval = GenRandInterval(DDNS_REGISTER_INTERVAL_OK_MIN, DDNS_REGISTER_INTERVAL_OK_MAX);
   }
   else
   {
    next_interval = GenRandInterval(DDNS_REGISTER_INTERVAL_NG_MIN, DDNS_REGISTER_INTERVAL_NG_MAX);
   }

   c->NextRegisterTick_IPv6 = Tick64() + (UINT64)next_interval;

   if (1)
   {
    DDNS_CLIENT_STATUS st;

    DCGetStatus(c, &st);

    SiApplyAzureConfig(c->Cedar->Server, &st);
   }

   AddInterrupt(interrupt, c->NextRegisterTick_IPv6);
  }

  interval = GetNextIntervalForInterrupt(interrupt);
  interval = MIN(interval, 1234);

  if (n == 1)
  {
   interval = 0;
  }

  if (c->Halt)
  {
   break;
  }

  if (c->KeyChanged)
  {
   c->KeyChanged = 0;
   c->NextRegisterTick_IPv4 = c->NextRegisterTick_IPv6 = 0;

   interval = 0;
  }

  if (last_time_ip_changed)
  {
   if (c->Cedar->Server != ((void*)0) && c->Cedar->Server->AzureClient != ((void*)0))
   {
    c->Cedar->Server->AzureClient->IpStatusRevision++;
   }
  }

  Wait(c->Event, interval);
 }

 FreeRouteChange(route_change_poller);
 FreeInterruptManager(interrupt);
}

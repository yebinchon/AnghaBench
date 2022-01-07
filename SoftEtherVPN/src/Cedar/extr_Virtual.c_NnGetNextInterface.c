
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_12__ ;


typedef int tmp ;
typedef int opt ;
typedef int gateway_ip ;
typedef int dhcp_ip ;
typedef int client_mask ;
typedef int client_ip ;
typedef scalar_t__ UINT ;
struct TYPE_26__ {int Gateway; int DnsServer2; int DnsServer; int ClasslessRoute; int SubnetMask; int ClientAddress; int ServerAddress; } ;
struct TYPE_25__ {int NextWaitTimeForRetry; scalar_t__ LastInterfaceDeviceHash; scalar_t__ LastHostAddressHash; scalar_t__ LastInterfaceIndex; TYPE_6__* CurrentMacAddress; scalar_t__ FailedCount; int HaltTube2; TYPE_2__* v; } ;
struct TYPE_24__ {int DnsServerIP2; int DnsServerIP; TYPE_12__* Ipc; TYPE_6__ CurrentDhcpOptionList; int DeviceName; int MacAddress; } ;
struct TYPE_23__ {scalar_t__ NumTokens; char** Token; } ;
struct TYPE_22__ {int MacAddress; TYPE_1__* HubOption; } ;
struct TYPE_21__ {scalar_t__ DisableIpRawModeSecureNAT; scalar_t__ DisableKernelModeSecureNAT; } ;
struct TYPE_20__ {int ClientHostname; TYPE_6__* MacAddress; } ;
typedef TYPE_3__ TOKEN_LIST ;
typedef TYPE_4__ NATIVE_STACK ;
typedef TYPE_5__ NATIVE_NAT ;
typedef int IP ;
typedef TYPE_6__ DHCP_OPTION_LIST ;


 int BinToStr (char*,int,int ,int) ;
 int Copy (TYPE_6__*,TYPE_6__*,int) ;
 int Debug (char*,...) ;
 int Format (int ,int,int ,char*) ;
 int FreeNativeStack (TYPE_4__*) ;
 int FreeToken (TYPE_3__*) ;
 scalar_t__ GetEthDeviceHash () ;
 TYPE_3__* GetEthListEx (int *,int,int) ;
 scalar_t__ GetHostIPAddressHash32 () ;
 scalar_t__ INFINITE ;
 scalar_t__ IPCDhcpAllocateIP (TYPE_12__*,TYPE_6__*,int ) ;
 int IPCSetIPv4Parameters (TYPE_12__*,int *,int *,int *,int *) ;
 int IPToStr32 (char*,int,int ) ;
 int IsInLinesFile (int ,char*,int) ;
 scalar_t__ IsZeroIP (int *) ;
 int MAX_SIZE ;
 int MIN (scalar_t__,int ) ;
 int NN_HOSTNAME_FORMAT ;
 int NN_NEXT_WAIT_TIME_FOR_DEVICE_ENUM ;
 int NN_NEXT_WAIT_TIME_MAX_FAIL_COUNT ;
 int NN_NO_NATIVE_NAT_FILENAME ;
 TYPE_4__* NewNativeStack (int *,char*,char*) ;
 scalar_t__ NnTestConnectivity (TYPE_4__*,int ) ;
 int SetIP (int *,int,int,int,int) ;
 int StrLower (int ) ;
 int UINTToIP (int *,int ) ;
 int Zero (TYPE_6__*,int) ;

NATIVE_STACK *NnGetNextInterface(NATIVE_NAT *t)
{
 NATIVE_STACK *ret = ((void*)0);
 UINT current_hash;
 TOKEN_LIST *device_list;
 UINT i;
 char tmp[MAX_SIZE];
 char *dev_name;
 UINT current_ip_hash;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 t->NextWaitTimeForRetry = NN_NEXT_WAIT_TIME_FOR_DEVICE_ENUM * MIN((t->FailedCount + 1), NN_NEXT_WAIT_TIME_MAX_FAIL_COUNT);


 device_list = GetEthListEx(((void*)0),
  !(t->v->HubOption != ((void*)0) && t->v->HubOption->DisableKernelModeSecureNAT),
  !(t->v->HubOption != ((void*)0) && t->v->HubOption->DisableIpRawModeSecureNAT));

 if (device_list == ((void*)0) || device_list->NumTokens == 0)
 {

  FreeToken(device_list);
  t->FailedCount++;
  return ((void*)0);
 }

 current_hash = GetEthDeviceHash();
 current_ip_hash = GetHostIPAddressHash32();

 if (t->LastInterfaceDeviceHash != current_hash || t->LastHostAddressHash != current_ip_hash)
 {

  t->LastInterfaceIndex = INFINITE;
  t->FailedCount = 0;
 }

 t->LastInterfaceDeviceHash = current_hash;
 t->LastHostAddressHash = current_ip_hash;

 if (t->LastInterfaceIndex == INFINITE)
 {
  i = 0;
 }
 else
 {
  i = t->LastInterfaceIndex + 1;
  if (i >= device_list->NumTokens)
  {
   i = 0;
  }
 }

 if ((i + 1) == device_list->NumTokens)
 {

  t->LastInterfaceIndex = INFINITE;


  t->FailedCount++;
 }
 else
 {

  t->LastInterfaceIndex = i;
  t->NextWaitTimeForRetry = 0;
 }

 dev_name = device_list->Token[i];

 if (IsInLinesFile(NN_NO_NATIVE_NAT_FILENAME, dev_name, 1) == 0)
 {

  BinToStr(tmp, sizeof(tmp), t->v->MacAddress, 6);
  ret = NewNativeStack(((void*)0), dev_name, tmp);

  if (ret != ((void*)0))
  {

   DHCP_OPTION_LIST opt;

   Copy(t->CurrentMacAddress, ret->Ipc->MacAddress, 6);

   Zero(&opt, sizeof(opt));

   BinToStr(tmp, sizeof(tmp), ret->MacAddress, 6);
   Format(ret->Ipc->ClientHostname, sizeof(ret->Ipc->ClientHostname), NN_HOSTNAME_FORMAT, tmp);
   StrLower(ret->Ipc->ClientHostname);

   Debug("IPCDhcpAllocateIP for %s\n", ret->DeviceName);
   if (IPCDhcpAllocateIP(ret->Ipc, &opt, t->HaltTube2))
   {
    char client_ip[64];
    char dhcp_ip[64];
    char client_mask[64];
    char gateway_ip[64];

    IP ip;
    IP subnet;
    IP gw;

    IPToStr32(client_ip, sizeof(client_ip), opt.ClientAddress);
    IPToStr32(client_mask, sizeof(client_mask), opt.SubnetMask);
    IPToStr32(dhcp_ip, sizeof(dhcp_ip), opt.ServerAddress);
    IPToStr32(gateway_ip, sizeof(gateway_ip), opt.Gateway);

    Debug("DHCP: client_ip=%s, client_mask=%s, dhcp_ip=%s, gateway_ip=%s\n",
     client_ip, client_mask, dhcp_ip, gateway_ip);

    Copy(&ret->CurrentDhcpOptionList, &opt, sizeof(DHCP_OPTION_LIST));


    UINTToIP(&ip, opt.ClientAddress);
    UINTToIP(&subnet, opt.SubnetMask);
    UINTToIP(&gw, opt.Gateway);

    IPCSetIPv4Parameters(ret->Ipc, &ip, &subnet, &gw, &opt.ClasslessRoute);


    UINTToIP(&ret->DnsServerIP, opt.DnsServer);
    UINTToIP(&ret->DnsServerIP2, opt.DnsServer2);
    if (IsZeroIP(&ret->DnsServerIP))
    {

     SetIP(&ret->DnsServerIP, 8, 8, 8, 8);
    }
    if (IsZeroIP(&ret->DnsServerIP2))
    {

     SetIP(&ret->DnsServerIP2, 8, 8, 4, 4);
    }



    if (opt.Gateway != 0 &&
     NnTestConnectivity(ret, t->HaltTube2))
    {

     t->FailedCount = 0;
     Debug("Connectivity OK.\n");
    }
    else
    {
     Debug("Connectivity Failed.\n");
     FreeNativeStack(ret);
     ret = ((void*)0);
    }
   }
   else
   {
    Debug("DHCP Failed.\n");
    FreeNativeStack(ret);
    ret = ((void*)0);

    Zero(t->CurrentMacAddress, sizeof(t->CurrentMacAddress));
   }
  }
 }

 FreeToken(device_list);

 return ret;
}

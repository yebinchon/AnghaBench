
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ Size; int Buf; } ;
struct TYPE_8__ {int HostUniqueKey; void* NoUdpAcceleration; void* FromAdminPack; void* DisableQoS; void* RequireBridgeRoutingMode; void* RequireMonitorMode; void* ConnectionDisconnectSpan; void* HideNicInfoWindow; void* HideStatusWindow; void* AdditionalConnectionInterval; int DeviceName; void* NoRoutingTracking; void* HalfConnection; void* UseCompress; void* UseEncrypt; void* MaxConnection; int HubName; void* RetryInterval; void* NumRetry; int CustomHttpHeader; int ProxyPassword; int ProxyUsername; void* ProxyPort; int ProxyName; void* ProxyType; void* PortUDP; void* Port; int Hostname; int AccountName; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT_OPTION ;
typedef TYPE_2__ BUF ;


 void* CfgGetBool (int *,char*) ;
 TYPE_2__* CfgGetBuf (int *,char*) ;
 void* CfgGetInt (int *,char*) ;
 int CfgGetStr (int *,char*,int ,int) ;
 int CfgGetUniStr (int *,char*,int ,int) ;
 int Copy (int ,int ,scalar_t__) ;
 char* DecryptPassword (TYPE_2__*) ;
 int Free (char*) ;
 int FreeBuf (TYPE_2__*) ;
 scalar_t__ SHA1_SIZE ;
 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

CLIENT_OPTION *CiLoadClientOption(FOLDER *f)
{
 CLIENT_OPTION *o;
 char *s;
 BUF *b;

 if (f == ((void*)0))
 {
  return ((void*)0);
 }

 o = ZeroMalloc(sizeof(CLIENT_OPTION));

 CfgGetUniStr(f, "AccountName", o->AccountName, sizeof(o->AccountName));
 CfgGetStr(f, "Hostname", o->Hostname, sizeof(o->Hostname));
 o->Port = CfgGetInt(f, "Port");
 o->PortUDP = CfgGetInt(f, "PortUDP");
 o->ProxyType = CfgGetInt(f, "ProxyType");
 CfgGetStr(f, "ProxyName", o->ProxyName, sizeof(o->ProxyName));
 o->ProxyPort = CfgGetInt(f, "ProxyPort");
 CfgGetStr(f, "ProxyUsername", o->ProxyUsername, sizeof(o->ProxyUsername));
 b = CfgGetBuf(f, "ProxyPassword");
 s = DecryptPassword(b);
 StrCpy(o->ProxyPassword, sizeof(o->ProxyPassword), s);
 Free(s);
 FreeBuf(b);
 CfgGetStr(f, "CustomHttpHeader", o->CustomHttpHeader, sizeof(o->CustomHttpHeader));
 o->NumRetry = CfgGetInt(f, "NumRetry");
 o->RetryInterval = CfgGetInt(f, "RetryInterval");
 CfgGetStr(f, "HubName", o->HubName, sizeof(o->HubName));
 o->MaxConnection = CfgGetInt(f, "MaxConnection");
 o->UseEncrypt = CfgGetBool(f, "UseEncrypt");
 o->UseCompress = CfgGetBool(f, "UseCompress");
 o->HalfConnection = CfgGetBool(f, "HalfConnection");
 o->NoRoutingTracking = CfgGetBool(f, "NoRoutingTracking");
 CfgGetStr(f, "DeviceName", o->DeviceName, sizeof(o->DeviceName));
 o->AdditionalConnectionInterval = CfgGetInt(f, "AdditionalConnectionInterval");
 o->HideStatusWindow = CfgGetBool(f, "HideStatusWindow");
 o->HideNicInfoWindow = CfgGetBool(f, "HideNicInfoWindow");
 o->ConnectionDisconnectSpan = CfgGetInt(f, "ConnectionDisconnectSpan");
 o->RequireMonitorMode = CfgGetBool(f, "RequireMonitorMode");
 o->RequireBridgeRoutingMode = CfgGetBool(f, "RequireBridgeRoutingMode");
 o->DisableQoS = CfgGetBool(f, "DisableQoS");
 o->FromAdminPack = CfgGetBool(f, "FromAdminPack");
 o->NoUdpAcceleration = CfgGetBool(f, "NoUdpAcceleration");

 b = CfgGetBuf(f, "HostUniqueKey");
 if (b != ((void*)0))
 {
  if (b->Size == SHA1_SIZE)
  {
   Copy(o->HostUniqueKey, b->Buf, SHA1_SIZE);
  }

  FreeBuf(b);
 }

 return o;
}

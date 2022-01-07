
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int UseEncrypt; int UseCompress; int HalfConnection; int NoRoutingTracking; int HostUniqueKey; void* NoUdpAcceleration; void* FromAdminPack; void* RequireBridgeRoutingMode; void* RequireMonitorMode; int DeviceName; int HubName; int CustomHttpHeader; int ProxyPassword; int ProxyUsername; int ProxyName; void* DisableQoS; void* HideNicInfoWindow; void* HideStatusWindow; void* ConnectionDisconnectSpan; void* AdditionalConnectionInterval; void* MaxConnection; void* RetryInterval; void* NumRetry; void* ProxyPort; void* ProxyType; void* PortUDP; void* Port; int Hostname; int AccountName; } ;
typedef int PACK ;
typedef TYPE_1__ CLIENT_OPTION ;


 void* PackGetBool (int *,char*) ;
 int PackGetData2 (int *,char*,int ,int ) ;
 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 int SHA1_SIZE ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientOption(CLIENT_OPTION *c, PACK *p)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(CLIENT_OPTION));

 PackGetUniStr(p, "AccountName", c->AccountName, sizeof(c->AccountName));
 PackGetStr(p, "Hostname", c->Hostname, sizeof(c->Hostname));
 c->Port = PackGetInt(p, "Port");
 c->PortUDP = PackGetInt(p, "PortUDP");
 c->ProxyType = PackGetInt(p, "ProxyType");
 c->ProxyPort = PackGetInt(p, "ProxyPort");
 c->NumRetry = PackGetInt(p, "NumRetry");
 c->RetryInterval = PackGetInt(p, "RetryInterval");
 c->MaxConnection = PackGetInt(p, "MaxConnection");
 c->AdditionalConnectionInterval = PackGetInt(p, "AdditionalConnectionInterval");
 c->ConnectionDisconnectSpan = PackGetInt(p, "ConnectionDisconnectSpan");
 c->HideStatusWindow = PackGetBool(p, "HideStatusWindow");
 c->HideNicInfoWindow = PackGetBool(p, "HideNicInfoWindow");
 c->DisableQoS = PackGetBool(p, "DisableQoS");
 PackGetStr(p, "ProxyName", c->ProxyName, sizeof(c->ProxyName));
 PackGetStr(p, "ProxyUsername", c->ProxyUsername, sizeof(c->ProxyUsername));
 PackGetStr(p, "ProxyPassword", c->ProxyPassword, sizeof(c->ProxyPassword));
 PackGetStr(p, "CustomHttpHeader", c->CustomHttpHeader, sizeof(c->CustomHttpHeader));
 PackGetStr(p, "HubName", c->HubName, sizeof(c->HubName));
 PackGetStr(p, "DeviceName", c->DeviceName, sizeof(c->DeviceName));
 c->UseEncrypt = PackGetInt(p, "UseEncrypt") ? 1 : 0;
 c->UseCompress = PackGetInt(p, "UseCompress") ? 1 : 0;
 c->HalfConnection = PackGetInt(p, "HalfConnection") ? 1 : 0;
 c->NoRoutingTracking = PackGetInt(p, "NoRoutingTracking") ? 1 : 0;
 c->RequireMonitorMode = PackGetBool(p, "RequireMonitorMode");
 c->RequireBridgeRoutingMode = PackGetBool(p, "RequireBridgeRoutingMode");
 c->FromAdminPack = PackGetBool(p, "FromAdminPack");
 c->NoUdpAcceleration = PackGetBool(p, "NoUdpAcceleration");
 PackGetData2(p, "HostUniqueKey", c->HostUniqueKey, SHA1_SIZE);
}

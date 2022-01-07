
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HostUniqueKey; int NoUdpAcceleration; int FromAdminPack; int DisableQoS; int RequireBridgeRoutingMode; int RequireMonitorMode; int HideNicInfoWindow; int HideStatusWindow; int ConnectionDisconnectSpan; int AdditionalConnectionInterval; int NoRoutingTracking; int HalfConnection; int UseCompress; int UseEncrypt; int MaxConnection; int RetryInterval; int NumRetry; int ProxyPort; int ProxyType; int PortUDP; int Port; int DeviceName; int HubName; int CustomHttpHeader; int ProxyPassword; int ProxyUsername; int ProxyName; int Hostname; int AccountName; } ;
typedef int PACK ;
typedef TYPE_1__ CLIENT_OPTION ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddData (int *,char*,int ,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;
 int SHA1_SIZE ;

void OutRpcClientOption(PACK *p, CLIENT_OPTION *c)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddUniStr(p, "AccountName", c->AccountName);
 PackAddStr(p, "Hostname", c->Hostname);
 PackAddStr(p, "ProxyName", c->ProxyName);
 PackAddStr(p, "ProxyUsername", c->ProxyUsername);
 PackAddStr(p, "ProxyPassword", c->ProxyPassword);
 PackAddStr(p, "CustomHttpHeader", c->CustomHttpHeader);
 PackAddStr(p, "HubName", c->HubName);
 PackAddStr(p, "DeviceName", c->DeviceName);
 PackAddInt(p, "Port", c->Port);
 PackAddInt(p, "PortUDP", c->PortUDP);
 PackAddInt(p, "ProxyType", c->ProxyType);
 PackAddInt(p, "ProxyPort", c->ProxyPort);
 PackAddInt(p, "NumRetry", c->NumRetry);
 PackAddInt(p, "RetryInterval", c->RetryInterval);
 PackAddInt(p, "MaxConnection", c->MaxConnection);
 PackAddBool(p, "UseEncrypt", c->UseEncrypt);
 PackAddBool(p, "UseCompress", c->UseCompress);
 PackAddBool(p, "HalfConnection", c->HalfConnection);
 PackAddBool(p, "NoRoutingTracking", c->NoRoutingTracking);
 PackAddInt(p, "AdditionalConnectionInterval", c->AdditionalConnectionInterval);
 PackAddInt(p, "ConnectionDisconnectSpan", c->ConnectionDisconnectSpan);
 PackAddBool(p, "HideStatusWindow", c->HideStatusWindow);
 PackAddBool(p, "HideNicInfoWindow", c->HideNicInfoWindow);
 PackAddBool(p, "RequireMonitorMode", c->RequireMonitorMode);
 PackAddBool(p, "RequireBridgeRoutingMode", c->RequireBridgeRoutingMode);
 PackAddBool(p, "DisableQoS", c->DisableQoS);
 PackAddBool(p, "FromAdminPack", c->FromAdminPack);
 PackAddBool(p, "NoUdpAcceleration", c->NoUdpAcceleration);
 PackAddData(p, "HostUniqueKey", c->HostUniqueKey, SHA1_SIZE);
}

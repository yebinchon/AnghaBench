
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int Size; int Buf; } ;
struct TYPE_8__ {int HostUniqueKey; scalar_t__ FromAdminPack; scalar_t__ NoUdpAcceleration; scalar_t__ DisableQoS; scalar_t__ RequireBridgeRoutingMode; scalar_t__ RequireMonitorMode; int ConnectionDisconnectSpan; scalar_t__ HideNicInfoWindow; scalar_t__ HideStatusWindow; int AdditionalConnectionInterval; int DeviceName; scalar_t__ NoRoutingTracking; scalar_t__ HalfConnection; scalar_t__ UseCompress; scalar_t__ UseEncrypt; int MaxConnection; int HubName; int RetryInterval; int NumRetry; int CustomHttpHeader; int ProxyPassword; int ProxyUsername; int ProxyPort; int ProxyName; int ProxyType; int PortUDP; int Port; int Hostname; int AccountName; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT_OPTION ;
typedef TYPE_2__ BUF ;


 int CfgAddBool (int *,char*,scalar_t__) ;
 int CfgAddBuf (int *,char*,TYPE_2__*) ;
 int CfgAddByte (int *,char*,int ,int ) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddStr (int *,char*,int ) ;
 int CfgAddUniStr (int *,char*,int ) ;
 TYPE_2__* EncryptPassword (int ) ;
 int FreeBuf (TYPE_2__*) ;
 int IsZero (int ,int ) ;
 TYPE_2__* MemToBuf (int ,int ) ;
 int SHA1_SIZE ;

void CiWriteClientOption(FOLDER *f, CLIENT_OPTION *o)
{
 BUF *b;

 if (f == ((void*)0) || o == ((void*)0))
 {
  return;
 }

 CfgAddUniStr(f, "AccountName", o->AccountName);
 CfgAddStr(f, "Hostname", o->Hostname);
 CfgAddInt(f, "Port", o->Port);
 CfgAddInt(f, "PortUDP", o->PortUDP);
 CfgAddInt(f, "ProxyType", o->ProxyType);
 CfgAddStr(f, "ProxyName", o->ProxyName);
 CfgAddInt(f, "ProxyPort", o->ProxyPort);
 CfgAddStr(f, "ProxyUsername", o->ProxyUsername);
 b = EncryptPassword(o->ProxyPassword);
 CfgAddByte(f, "ProxyPassword", b->Buf, b->Size);
 FreeBuf(b);
 CfgAddStr(f, "CustomHttpHeader", o->CustomHttpHeader);
 CfgAddInt(f, "NumRetry", o->NumRetry);
 CfgAddInt(f, "RetryInterval", o->RetryInterval);
 CfgAddStr(f, "HubName", o->HubName);
 CfgAddInt(f, "MaxConnection", o->MaxConnection);
 CfgAddBool(f, "UseEncrypt", o->UseEncrypt);
 CfgAddBool(f, "UseCompress", o->UseCompress);
 CfgAddBool(f, "HalfConnection", o->HalfConnection);
 CfgAddBool(f, "NoRoutingTracking", o->NoRoutingTracking);
 CfgAddStr(f, "DeviceName", o->DeviceName);
 CfgAddInt(f, "AdditionalConnectionInterval", o->AdditionalConnectionInterval);
 CfgAddBool(f, "HideStatusWindow", o->HideStatusWindow);
 CfgAddBool(f, "HideNicInfoWindow", o->HideNicInfoWindow);
 CfgAddInt(f, "ConnectionDisconnectSpan", o->ConnectionDisconnectSpan);
 CfgAddBool(f, "RequireMonitorMode", o->RequireMonitorMode);
 CfgAddBool(f, "RequireBridgeRoutingMode", o->RequireBridgeRoutingMode);
 CfgAddBool(f, "DisableQoS", o->DisableQoS);
 CfgAddBool(f, "NoUdpAcceleration", o->NoUdpAcceleration);

 if (o->FromAdminPack)
 {
  CfgAddBool(f, "FromAdminPack", o->FromAdminPack);
 }

 if (IsZero(o->HostUniqueKey, SHA1_SIZE) == 0)
 {
  BUF *b = MemToBuf(o->HostUniqueKey, SHA1_SIZE);
  CfgAddBuf(f, "HostUniqueKey", b);
  FreeBuf(b);
 }
}

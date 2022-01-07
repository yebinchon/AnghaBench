
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char UINT ;
struct TYPE_6__ {char* CalledStationStr; char* ClientIpStr; char* Username; char* In_VpnProtocolState; } ;
struct TYPE_5__ {int AvpList; } ;
typedef TYPE_1__ RADIUS_PACKET ;
typedef TYPE_2__ EAP_CLIENT ;


 int Add (int ,int ) ;
 char* CEDAR_SERVER_STR ;
 char Endian32 (int) ;
 int IsEmptyStr (char*) ;
 int NewRadiusAvp (int ,int,int ,char*,int) ;
 int RADIUS_ATTRIBUTE_CALLED_STATION_ID ;
 int RADIUS_ATTRIBUTE_CALLING_STATION_ID ;
 int RADIUS_ATTRIBUTE_FRAMED_PROTOCOL ;
 int RADIUS_ATTRIBUTE_NAS_ID ;
 int RADIUS_ATTRIBUTE_NAS_PORT_TYPE ;
 int RADIUS_ATTRIBUTE_PROXY_STATE ;
 int RADIUS_ATTRIBUTE_SERVICE_TYPE ;
 int RADIUS_ATTRIBUTE_TUNNEL_CLIENT_ENDPOINT ;
 int RADIUS_ATTRIBUTE_USER_NAME ;
 int RADIUS_ATTRIBUTE_VENDOR_SPECIFIC ;
 int RADIUS_MS_NETWORK_ACCESS_SERVER_TYPE ;
 int RADIUS_MS_RAS_CLIENT_NAME ;
 int RADIUS_MS_RAS_CLIENT_VERSION ;
 int RADIUS_MS_RAS_CORRELATION ;
 int RADIUS_MS_RAS_VENDOR ;
 int RADIUS_MS_VERSION ;
 int RADIUS_VENDOR_MICROSOFT ;
 int StrLen (char*) ;

void EapSetRadiusGeneralAttributes(RADIUS_PACKET *r, EAP_CLIENT *e)
{
 UINT ui;
 char *str;
 if (r == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 ui = Endian32(2);
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_SERVICE_TYPE, 0, 0, &ui, sizeof(UINT)));

 ui = Endian32(1);
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_FRAMED_PROTOCOL, 0, 0, &ui, sizeof(UINT)));

 ui = Endian32(5);
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_NAS_PORT_TYPE, 0, 0, &ui, sizeof(UINT)));

 if (IsEmptyStr(e->CalledStationStr) == 0)
 {
  Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_CALLED_STATION_ID, 0, 0, e->CalledStationStr, StrLen(e->CalledStationStr)));
 }

 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_CALLING_STATION_ID, 0, 0, e->ClientIpStr, StrLen(e->ClientIpStr)));

 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_TUNNEL_CLIENT_ENDPOINT, 0, 0, e->ClientIpStr, StrLen(e->ClientIpStr)));

 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_USER_NAME, 0, 0, e->Username, StrLen(e->Username)));

 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_NAS_ID, 0, 0, CEDAR_SERVER_STR, StrLen(CEDAR_SERVER_STR)));

 if (IsEmptyStr(e->In_VpnProtocolState) == 0)
 {
  Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_PROXY_STATE, 0, 0, e->In_VpnProtocolState, StrLen(e->In_VpnProtocolState)));
 }

 ui = Endian32(2);
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, RADIUS_VENDOR_MICROSOFT,
  RADIUS_MS_NETWORK_ACCESS_SERVER_TYPE, &ui, sizeof(UINT)));

 ui = Endian32(RADIUS_VENDOR_MICROSOFT);
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, RADIUS_VENDOR_MICROSOFT,
  RADIUS_MS_RAS_VENDOR, &ui, sizeof(UINT)));

 str = "MSRASV5.20";
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, RADIUS_VENDOR_MICROSOFT,
  RADIUS_MS_VERSION, str, StrLen(str)));

 str = "{5DC53D72-9815-4E97-AC91-339BAFEA6C48}";
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, RADIUS_VENDOR_MICROSOFT,
  RADIUS_MS_RAS_CORRELATION, str, StrLen(str)));

 str = "MSRASV5.20";
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, RADIUS_VENDOR_MICROSOFT,
  RADIUS_MS_RAS_CLIENT_VERSION, str, StrLen(str)));

 str = "MSRASV5.20";
 Add(r->AvpList, NewRadiusAvp(RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, RADIUS_VENDOR_MICROSOFT,
  RADIUS_MS_RAS_CLIENT_NAME, str, StrLen(str)));
}

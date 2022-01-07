
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int sign ;
typedef int my_ip ;
struct TYPE_19__ {int bits; int is_compatible_bit; } ;
typedef TYPE_4__ X ;
typedef int UCHAR ;
struct TYPE_22__ {int AuthType; char* Username; TYPE_4__* ClientX; int ClientK; int PlainPassword; int HashedPassword; } ;
struct TYPE_21__ {char* HubName; int MaxConnection; int UseEncrypt; int UseCompress; int HalfConnection; int RequireBridgeRoutingMode; int RequireMonitorMode; int NoUdpAcceleration; scalar_t__ DisableQoS; } ;
struct TYPE_20__ {int UseTicket; scalar_t__ Err; int Protocol; char* ClientStr; int ClientVer; int ClientBuild; int FirstSock; TYPE_3__* Session; TYPE_1__* Cedar; int * Ticket; void* ClientX; int Random; } ;
struct TYPE_18__ {int ForceStopFlag; TYPE_2__* UdpAccel; TYPE_6__* ClientOption; TYPE_7__* ClientAuth; } ;
struct TYPE_17__ {int MyPort; int * MyKey; int MyIp; } ;
struct TYPE_16__ {int ClientId; } ;
typedef int RPC_WINVER ;
typedef int PACK ;
typedef int NODE_INFO ;
typedef int IP ;
typedef TYPE_5__ CONNECTION ;
typedef TYPE_6__ CLIENT_OPTION ;
typedef TYPE_7__ CLIENT_AUTH ;


 int AUTHTYPE_TICKET ;





 int ClientSecureSign (TYPE_5__*,int *,int ,TYPE_4__**) ;
 void* CloneX (TYPE_4__*) ;
 int Copy (int *,int *,int) ;
 int CreateNodeInfo (int *,TYPE_5__*) ;
 scalar_t__ ERR_DISCONNECTED ;
 scalar_t__ ERR_PROTOCOL_ERROR ;
 scalar_t__ ERR_SECURE_DEVICE_OPEN_FAILED ;
 int FreePack (int *) ;
 int FreeX (TYPE_4__*) ;
 int GenerateMachineUniqueHash (int *) ;
 int GetWinVer (int *) ;
 int HttpClientSend (int ,int *) ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsLocalHostIP (int *) ;
 int * NewPack () ;
 int OutRpcNodeInfo (int *,int *) ;
 int OutRpcWinVer (int *,int *) ;
 int PackAddBool (int *,char*,int) ;
 int PackAddClientVersion (int *,TYPE_5__*) ;
 int PackAddData (int *,char*,int *,int) ;
 int PackAddInt (int *,char*,int) ;
 int PackAddIp (int *,char*,int *) ;
 int PackAddStr (int *,char*,char*) ;
 int * PackLoginWithAnonymous (char*,char*) ;
 int * PackLoginWithCert (char*,char*,TYPE_4__*,int *,int) ;
 int * PackLoginWithPassword (char*,char*,int *) ;
 int * PackLoginWithPlainPassword (char*,char*,int ) ;
 int RsaSignEx (int *,int ,int,int ,int) ;
 int SHA1_SIZE ;
 int SecurePassword (int *,int ,int ) ;
 scalar_t__ StrLen (char*) ;
 int UDP_ACCELERATION_COMMON_KEY_SIZE ;
 int Zero (int *,int) ;
 int ZeroIP4 (int *) ;
 int ZeroIP6 (int *) ;
 char* _SS (char*) ;

bool ClientUploadAuth(CONNECTION *c)
{
 PACK *p = ((void*)0);
 CLIENT_AUTH *a;
 CLIENT_OPTION *o;
 X *x;
 bool ret;
 NODE_INFO info;
 UCHAR secure_password[SHA1_SIZE];
 UCHAR sign[4096 / 8];
 UCHAR unique[SHA1_SIZE];
 RPC_WINVER v;

 if (c == ((void*)0))
 {
  return 0;
 }

 Zero(sign, sizeof(sign));

 a = c->Session->ClientAuth;
 o = c->Session->ClientOption;

 if (c->UseTicket == 0)
 {
  switch (a->AuthType)
  {
  case 132:

   p = PackLoginWithAnonymous(o->HubName, a->Username);
   break;

  case 130:

   SecurePassword(secure_password, a->HashedPassword, c->Random);
   p = PackLoginWithPassword(o->HubName, a->Username, secure_password);
   break;

  case 129:

   p = PackLoginWithPlainPassword(o->HubName, a->Username, a->PlainPassword);
   break;

  case 131:

   if (a->ClientX != ((void*)0) && a->ClientX->is_compatible_bit &&
    a->ClientX->bits != 0 && (a->ClientX->bits / 8) <= sizeof(sign))
   {
    if (RsaSignEx(sign, c->Random, SHA1_SIZE, a->ClientK, a->ClientX->bits))
    {
     p = PackLoginWithCert(o->HubName, a->Username, a->ClientX, sign, a->ClientX->bits / 8);
     c->ClientX = CloneX(a->ClientX);
    }
   }
   break;

  case 128:

   if (ClientSecureSign(c, sign, c->Random, &x))
   {
    p = PackLoginWithCert(o->HubName, a->Username, x, sign, x->bits / 8);
    c->ClientX = CloneX(x);
    FreeX(x);
   }
   else
   {
    c->Err = ERR_SECURE_DEVICE_OPEN_FAILED;
    c->Session->ForceStopFlag = 1;
   }
   break;
  }
 }
 else
 {

  p = NewPack();
  PackAddStr(p, "method", "login");
  PackAddStr(p, "hubname", o->HubName);
  PackAddStr(p, "username", a->Username);
  PackAddInt(p, "authtype", AUTHTYPE_TICKET);
  PackAddData(p, "ticket", c->Ticket, SHA1_SIZE);
 }

 if (p == ((void*)0))
 {

  if (c->Err != ERR_SECURE_DEVICE_OPEN_FAILED)
  {
   c->Err = ERR_PROTOCOL_ERROR;
  }
  return 0;
 }

 PackAddClientVersion(p, c);


 PackAddInt(p, "protocol", c->Protocol);


 PackAddStr(p, "hello", c->ClientStr);
 PackAddInt(p, "version", c->ClientVer);
 PackAddInt(p, "build", c->ClientBuild);
 PackAddInt(p, "client_id", c->Cedar->ClientId);


 PackAddInt(p, "max_connection", o->MaxConnection);

 PackAddInt(p, "use_encrypt", o->UseEncrypt == 0 ? 0 : 1);

 PackAddInt(p, "use_compress", o->UseCompress == 0 ? 0 : 1);

 PackAddInt(p, "half_connection", o->HalfConnection == 0 ? 0 : 1);


 PackAddBool(p, "require_bridge_routing_mode", o->RequireBridgeRoutingMode);


 PackAddBool(p, "require_monitor_mode", o->RequireMonitorMode);


 PackAddBool(p, "qos", o->DisableQoS ? 0 : 1);


 PackAddBool(p, "support_bulk_on_rudp", 1);
 PackAddBool(p, "support_hmac_on_bulk_of_rudp", 1);


 PackAddBool(p, "support_udp_recovery", 1);


 GenerateMachineUniqueHash(unique);
 PackAddData(p, "unique_id", unique, SHA1_SIZE);


 if (o->NoUdpAcceleration == 0 && c->Session->UdpAccel != ((void*)0))
 {
  IP my_ip;

  Zero(&my_ip, sizeof(my_ip));

  PackAddBool(p, "use_udp_acceleration", 1);

  Copy(&my_ip, &c->Session->UdpAccel->MyIp, sizeof(IP));
  if (IsLocalHostIP(&my_ip))
  {
   if (IsIP4(&my_ip))
   {
    ZeroIP4(&my_ip);
   }
   else
   {
    ZeroIP6(&my_ip);
   }
  }

  PackAddIp(p, "udp_acceleration_client_ip", &my_ip);
  PackAddInt(p, "udp_acceleration_client_port", c->Session->UdpAccel->MyPort);
  PackAddData(p, "udp_acceleration_client_key", c->Session->UdpAccel->MyKey, UDP_ACCELERATION_COMMON_KEY_SIZE);
  PackAddBool(p, "support_hmac_on_udp_acceleration", 1);
  PackAddBool(p, "support_udp_accel_fast_disconnect_detect", 1);
 }


 {
  char *branded_ctos = _SS("BRANDED_C_TO_S");
  if(StrLen(branded_ctos) > 0)
  {
   PackAddStr(p, "branded_ctos", branded_ctos);
  }
 }


 CreateNodeInfo(&info, c);
 OutRpcNodeInfo(p, &info);


 GetWinVer(&v);
 OutRpcWinVer(p, &v);

 ret = HttpClientSend(c->FirstSock, p);
 if (ret == 0)
 {
  c->Err = ERR_DISCONNECTED;
 }

 FreePack(p);

 return ret;
}

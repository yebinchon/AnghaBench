
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int MaxConnection; int UseEncrypt; int UseCompress; int HalfConnection; int Timeout; int IsAzureSession; int SessionKey32; int VLanId; int UdpAccelFastDisconnectDetect; int EnableHMacOnBulkOfRUDP; int EnableUdpRecovery; TYPE_5__* Connection; scalar_t__ EnableBulkOnRUDP; TYPE_2__* UdpAccel; TYPE_1__* Hub; int IpcMacAddress; scalar_t__ InProcMode; scalar_t__ NoSendSignature; int UdpSendKey; int UdpRecvKey; int Policy; int SessionKey; scalar_t__ QoS; int Name; } ;
struct TYPE_14__ {int Reverse_MyServerGlobalIp; TYPE_4__* BulkSendKey; TYPE_3__* BulkRecvKey; } ;
struct TYPE_13__ {scalar_t__ Protocol; TYPE_6__* FirstSock; int Name; } ;
struct TYPE_12__ {int Data; } ;
struct TYPE_11__ {int Data; } ;
struct TYPE_10__ {int MyPort; int MyCookie; int YourCookie; int UseHMac; int PlainTextMode; int MyKey; int MyIp; } ;
struct TYPE_9__ {int Name; } ;
typedef TYPE_6__ SOCK ;
typedef TYPE_7__ SESSION ;
typedef int PACK ;


 scalar_t__ CONNECTION_UDP ;
 int * NewPack () ;
 int PackAddBool (int *,char*,int) ;
 int PackAddData (int *,char*,int ,int) ;
 int PackAddInt (int *,char*,int) ;
 int PackAddIp (int *,char*,int *) ;
 int PackAddPolicy (int *,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int Rand (int ,int) ;
 int SHA1_SIZE ;
 int UDP_ACCELERATION_COMMON_KEY_SIZE ;

PACK *PackWelcome(SESSION *s)
{
 PACK *p;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();


 PackAddStr(p, "session_name", s->Name);


 PackAddStr(p, "connection_name", s->Connection->Name);


 PackAddInt(p, "max_connection", s->MaxConnection);
 PackAddInt(p, "use_encrypt", s->UseEncrypt == 0 ? 0 : 1);
 PackAddInt(p, "use_compress", s->UseCompress == 0 ? 0 : 1);
 PackAddInt(p, "half_connection", s->HalfConnection == 0 ? 0 : 1);
 PackAddInt(p, "timeout", s->Timeout);
 PackAddInt(p, "qos", s->QoS ? 1 : 0);
 PackAddInt(p, "is_azure_session", s->IsAzureSession);


 PackAddData(p, "session_key", s->SessionKey, SHA1_SIZE);
 PackAddInt(p, "session_key_32", s->SessionKey32);


 PackAddPolicy(p, s->Policy);


 PackAddInt(p, "vlan_id", s->VLanId);

 if (s->Connection->Protocol == CONNECTION_UDP)
 {

  Rand(s->UdpSendKey, sizeof(s->UdpSendKey));
  Rand(s->UdpRecvKey, sizeof(s->UdpRecvKey));


  PackAddData(p, "udp_send_key", s->UdpRecvKey, sizeof(s->UdpRecvKey));
  PackAddData(p, "udp_recv_key", s->UdpSendKey, sizeof(s->UdpSendKey));
 }


 if (s->NoSendSignature)
 {
  PackAddBool(p, "no_send_signature", 1);
 }

 if (s->InProcMode)
 {

  PackAddData(p, "IpcMacAddress", s->IpcMacAddress, 6);


  PackAddStr(p, "IpcHubName", s->Hub->Name);
 }

 if (s->UdpAccel != ((void*)0))
 {

  PackAddBool(p, "use_udp_acceleration", 1);
  PackAddIp(p, "udp_acceleration_server_ip", &s->UdpAccel->MyIp);
  PackAddInt(p, "udp_acceleration_server_port", s->UdpAccel->MyPort);
  PackAddData(p, "udp_acceleration_server_key", s->UdpAccel->MyKey, UDP_ACCELERATION_COMMON_KEY_SIZE);
  PackAddInt(p, "udp_acceleration_server_cookie", s->UdpAccel->MyCookie);
  PackAddInt(p, "udp_acceleration_client_cookie", s->UdpAccel->YourCookie);
  PackAddBool(p, "udp_acceleration_use_encryption", !s->UdpAccel->PlainTextMode);
  PackAddBool(p, "use_hmac_on_udp_acceleration", s->UdpAccel->UseHMac);
  PackAddBool(p, "udp_accel_fast_disconnect_detect", s->UdpAccelFastDisconnectDetect);
 }

 if (s->EnableBulkOnRUDP)
 {

  PackAddBool(p, "enable_bulk_on_rudp", 1);
  PackAddBool(p, "enable_hmac_on_bulk_of_rudp", s->EnableHMacOnBulkOfRUDP);

  PackAddData(p, "bulk_on_rudp_send_key", s->Connection->FirstSock->BulkRecvKey->Data, SHA1_SIZE);
  PackAddData(p, "bulk_on_rudp_recv_key", s->Connection->FirstSock->BulkSendKey->Data, SHA1_SIZE);
 }

 if (s->IsAzureSession)
 {
  if (s->Connection != ((void*)0) && s->Connection->FirstSock != ((void*)0))
  {
   SOCK *sock = s->Connection->FirstSock;

   PackAddIp(p, "azure_real_server_global_ip", &sock->Reverse_MyServerGlobalIp);
  }
 }

 PackAddBool(p, "enable_udp_recovery", s->EnableUdpRecovery);

 return p;
}

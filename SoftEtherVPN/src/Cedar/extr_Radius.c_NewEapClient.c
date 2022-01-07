
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int NextRadiusPacketId; int PEAP_CurrentReceivingMsg; scalar_t__ LastRecvEapId; int Username; int ClientIpStr; int CalledStationStr; int SharedSecret; scalar_t__ GiveupTimeout; scalar_t__ ResendTimeout; scalar_t__ ServerPort; int ServerIp; int UdpSock; int Ref; } ;
typedef int IP ;
typedef TYPE_1__ EAP_CLIENT ;


 int Copy (int *,int *,int) ;
 int IsIP6 (int *) ;
 int NewBuf () ;
 int NewRef () ;
 int NewUDPEx (int ,int ) ;
 scalar_t__ RADIUS_RETRY_INTERVAL ;
 scalar_t__ RADIUS_RETRY_TIMEOUT ;
 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

EAP_CLIENT *NewEapClient(IP *server_ip, UINT server_port, char *shared_secret, UINT resend_timeout, UINT giveup_timeout, char *client_ip_str, char *username, char *hubname)
{
 EAP_CLIENT *e;
 if (server_ip == ((void*)0))
 {
  return ((void*)0);
 }
 if (resend_timeout == 0)
 {
  resend_timeout = RADIUS_RETRY_INTERVAL;
 }
 if (giveup_timeout == 0)
 {
  giveup_timeout = RADIUS_RETRY_TIMEOUT;
 }

 e = ZeroMalloc(sizeof(EAP_CLIENT));

 e->Ref = NewRef();

 e->NextRadiusPacketId = 1;

 e->UdpSock = NewUDPEx(0, IsIP6(server_ip));
 Copy(&e->ServerIp, server_ip, sizeof(IP));
 e->ServerPort = server_port;
 e->ResendTimeout = resend_timeout;
 e->GiveupTimeout = giveup_timeout;
 StrCpy(e->SharedSecret, sizeof(e->SharedSecret), shared_secret);

 StrCpy(e->CalledStationStr, sizeof(e->CalledStationStr), hubname);
 StrCpy(e->ClientIpStr, sizeof(e->ClientIpStr), client_ip_str);
 StrCpy(e->Username, sizeof(e->Username), username);
 e->LastRecvEapId = 0;

 e->PEAP_CurrentReceivingMsg = NewBuf();

 return e;
}

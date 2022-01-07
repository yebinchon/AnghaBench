
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int server_ip_str ;
typedef int client_ip_str ;
typedef void* UINT ;
struct TYPE_13__ {int NextSessionId; int Now; TYPE_1__* Cedar; int SessionList; } ;
struct TYPE_12__ {int Id; int CreatedTick; TYPE_3__* Server; int ServerSessionId; void* Protocol; int LastCommTick; int ObfuscationMode; void* ServerPort; int ServerIp; void* ClientPort; int ClientIp; } ;
struct TYPE_11__ {scalar_t__ OpenVPNObfuscation; } ;
typedef TYPE_2__ OPENVPN_SESSION ;
typedef TYPE_3__ OPENVPN_SERVER ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int Debug (char*,char*,void*,char*,void*,void*) ;
 int INFINITE ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_SIZE ;
 void* OPENVPN_PROTOCOL_UDP ;
 scalar_t__ OPENVPN_QUOTA_MAX_NUM_SESSIONS ;
 scalar_t__ OPENVPN_QUOTA_MAX_NUM_SESSIONS_PER_IP ;
 int OPENVPN_SCRAMBLE_MODE_DISABLED ;
 scalar_t__ OvsGetNumSessionByClientIp (TYPE_3__*,int *) ;
 int OvsLog (TYPE_3__*,TYPE_2__*,int *,char*,char*) ;
 int OvsNewServerSessionId (TYPE_3__*) ;
 TYPE_2__* ZeroMalloc (int) ;

OPENVPN_SESSION *OvsNewSession(OPENVPN_SERVER *s, IP *server_ip, UINT server_port, IP *client_ip, UINT client_port, UINT protocol)
{
 OPENVPN_SESSION *se;
 char server_ip_str[MAX_SIZE];
 char client_ip_str[MAX_SIZE];

 if (s == ((void*)0) || server_ip == ((void*)0) || server_port == 0 || client_ip == ((void*)0) || client_port == 0)
 {
  return ((void*)0);
 }


 if (OvsGetNumSessionByClientIp(s, client_ip) > OPENVPN_QUOTA_MAX_NUM_SESSIONS_PER_IP)
 {

  return ((void*)0);
 }

 if (LIST_NUM(s->SessionList) > OPENVPN_QUOTA_MAX_NUM_SESSIONS)
 {

  return ((void*)0);
 }

 se = ZeroMalloc(sizeof(OPENVPN_SESSION));

 se->Server = s;

 Copy(&se->ClientIp, client_ip, sizeof(IP));
 se->ClientPort = client_port;

 Copy(&se->ServerIp, server_ip, sizeof(IP));
 se->ServerPort = server_port;

 se->ObfuscationMode = s->Cedar->OpenVPNObfuscation ? INFINITE : OPENVPN_SCRAMBLE_MODE_DISABLED;

 se->LastCommTick = s->Now;

 se->Protocol = protocol;

 se->ServerSessionId = OvsNewServerSessionId(se->Server);

 se->CreatedTick = s->Now;

 se->Id = s->NextSessionId;
 s->NextSessionId++;

 IPToStr(server_ip_str, sizeof(server_ip_str), server_ip);
 IPToStr(client_ip_str, sizeof(client_ip_str), client_ip);
 Debug("OpenVPN New Session: %s:%u -> %s:%u Proto=%u\n", server_ip_str, server_port,
  client_ip_str, client_port, protocol);

 OvsLog(s, se, ((void*)0), "LO_NEW_SESSION", (protocol == OPENVPN_PROTOCOL_UDP ? "UDP" : "TCP"));

 return se;
}

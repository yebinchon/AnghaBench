
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int req ;
typedef int UINT ;
struct TYPE_10__ {int RequestedIp; int Hostname; int Opcode; } ;
struct TYPE_9__ {int ClientIPAddress; int ClientHostname; } ;
typedef TYPE_1__ IPC ;
typedef int IP ;
typedef TYPE_2__ DHCP_OPTION_LIST ;


 int DHCP_REQUEST ;
 int FreeDHCPv4Data (int ) ;
 int IPCDhcpSetConditionalUserClass (TYPE_1__*,TYPE_2__*) ;
 int IPCSendDhcpRequest (TYPE_1__*,int *,int ,TYPE_2__*,int ,int ,int *) ;
 int IPToUINT (int *) ;
 int Rand32 () ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;

void IPCDhcpRenewIP(IPC *ipc, IP *dhcp_server)
{
 DHCP_OPTION_LIST req;
 UINT tran_id = Rand32();

 if (ipc == ((void*)0) || dhcp_server == ((void*)0))
 {
  return;
 }


 Zero(&req, sizeof(req));
 req.Opcode = DHCP_REQUEST;
 StrCpy(req.Hostname, sizeof(req.Hostname), ipc->ClientHostname);
 req.RequestedIp = IPToUINT(&ipc->ClientIPAddress);
 IPCDhcpSetConditionalUserClass(ipc, &req);

 FreeDHCPv4Data(IPCSendDhcpRequest(ipc, dhcp_server, tran_id, &req, 0, 0, ((void*)0)));
}

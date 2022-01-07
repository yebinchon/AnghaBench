
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int req ;
typedef int UINT ;
struct TYPE_5__ {int ServerAddress; int Opcode; } ;
typedef int IPC ;
typedef int IP ;
typedef TYPE_1__ DHCP_OPTION_LIST ;


 int DHCP_RELEASE ;
 int FreeDHCPv4Data (int ) ;
 int IPCDhcpSetConditionalUserClass (int *,TYPE_1__*) ;
 int IPCSendDhcpRequest (int *,int *,int ,TYPE_1__*,int ,int ,int *) ;
 int IPToUINT (int *) ;
 int Rand32 () ;
 int Zero (TYPE_1__*,int) ;

void IPCDhcpFreeIP(IPC *ipc, IP *dhcp_server)
{
 DHCP_OPTION_LIST req;
 UINT tran_id = Rand32();

 if (ipc == ((void*)0) || dhcp_server == ((void*)0))
 {
  return;
 }

 Zero(&req, sizeof(req));
 req.Opcode = DHCP_RELEASE;
 req.ServerAddress = IPToUINT(dhcp_server);
 IPCDhcpSetConditionalUserClass(ipc, &req);

 FreeDHCPv4Data(IPCSendDhcpRequest(ipc, ((void*)0), tran_id, &req, 0, 0, ((void*)0)));
}

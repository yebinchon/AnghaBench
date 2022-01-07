
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int req ;
typedef int UINT ;
struct TYPE_18__ {TYPE_14__* ParsedOptionList; } ;
struct TYPE_17__ {int Hostname; int ClientAddress; int Opcode; } ;
struct TYPE_16__ {int ClientHostname; } ;
struct TYPE_15__ {scalar_t__ SubnetMask; } ;
typedef int TUBE ;
typedef TYPE_1__ IPC ;
typedef int IP ;
typedef TYPE_2__ DHCP_OPTION_LIST ;
typedef TYPE_3__ DHCPV4_DATA ;


 int Copy (TYPE_2__*,TYPE_14__*,int) ;
 int DHCP_ACK ;
 int DHCP_INFORM ;
 int FreeDHCPv4Data (TYPE_3__*) ;
 int IPCDhcpSetConditionalUserClass (TYPE_1__*,TYPE_2__*) ;
 TYPE_3__* IPCSendDhcpRequest (TYPE_1__*,int *,int ,TYPE_2__*,int ,int ,int *) ;
 int IPC_DHCP_TIMEOUT ;
 int IPToUINT (int *) ;
 int Rand32 () ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;

bool IPCDhcpRequestInformIP(IPC *ipc, DHCP_OPTION_LIST *opt, TUBE *discon_poll_tube, IP *client_ip)
{
 DHCP_OPTION_LIST req;
 DHCPV4_DATA *d;
 UINT tran_id = Rand32();
 bool ok;

 if (ipc == ((void*)0) || opt == ((void*)0) || client_ip == ((void*)0))
 {
  return 0;
 }


 Zero(&req, sizeof(req));
 req.Opcode = DHCP_INFORM;
 req.ClientAddress = IPToUINT(client_ip);
 StrCpy(req.Hostname, sizeof(req.Hostname), ipc->ClientHostname);
 IPCDhcpSetConditionalUserClass(ipc, &req);

 d = IPCSendDhcpRequest(ipc, ((void*)0), tran_id, &req, DHCP_ACK, IPC_DHCP_TIMEOUT, discon_poll_tube);
 if (d == ((void*)0))
 {
  return 0;
 }


 ok = 1;
 if (d->ParsedOptionList->SubnetMask == 0)
 {
  ok = 0;
 }

 if (ok == 0)
 {
  FreeDHCPv4Data(d);
  return 0;
 }

 Copy(opt, d->ParsedOptionList, sizeof(DHCP_OPTION_LIST));

 FreeDHCPv4Data(d);

 return 1;
}

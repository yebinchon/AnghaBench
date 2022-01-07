
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
struct TYPE_17__ {scalar_t__ RequestedIp; scalar_t__ ServerAddress; int Hostname; int Opcode; } ;
struct TYPE_16__ {int ClientHostname; } ;
struct TYPE_15__ {scalar_t__ SubnetMask; scalar_t__ LeaseTime; scalar_t__ ServerAddress; scalar_t__ ClientAddress; } ;
typedef int TUBE ;
typedef TYPE_1__ IPC ;
typedef TYPE_2__ DHCP_OPTION_LIST ;
typedef TYPE_3__ DHCPV4_DATA ;


 int Copy (TYPE_2__*,TYPE_14__*,int) ;
 int DHCP_ACK ;
 int DHCP_DISCOVER ;
 int DHCP_OFFER ;
 int DHCP_REQUEST ;
 int FreeDHCPv4Data (TYPE_3__*) ;
 int IPCDhcpSetConditionalUserClass (TYPE_1__*,TYPE_2__*) ;
 TYPE_3__* IPCSendDhcpRequest (TYPE_1__*,int *,int ,TYPE_2__*,int ,int ,int *) ;
 void* IPC_DHCP_DEFAULT_LEASE ;
 scalar_t__ IPC_DHCP_MIN_LEASE ;
 int IPC_DHCP_TIMEOUT ;
 int IsValidUnicastIPAddressUINT4 (scalar_t__) ;
 int Rand32 () ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;

bool IPCDhcpAllocateIP(IPC *ipc, DHCP_OPTION_LIST *opt, TUBE *discon_poll_tube)
{
 DHCP_OPTION_LIST req;
 DHCPV4_DATA *d, *d2;
 UINT tran_id = Rand32();
 bool ok;

 if (ipc == ((void*)0) || opt == ((void*)0))
 {
  return 0;
 }


 Zero(&req, sizeof(req));
 req.RequestedIp = 0;
 req.Opcode = DHCP_DISCOVER;
 StrCpy(req.Hostname, sizeof(req.Hostname), ipc->ClientHostname);
 IPCDhcpSetConditionalUserClass(ipc, &req);

 d = IPCSendDhcpRequest(ipc, ((void*)0), tran_id, &req, DHCP_OFFER, IPC_DHCP_TIMEOUT, discon_poll_tube);
 if (d == ((void*)0))
 {
  return 0;
 }


 ok = 1;
 if (IsValidUnicastIPAddressUINT4(d->ParsedOptionList->ClientAddress) == 0)
 {
  ok = 0;
 }
 if (IsValidUnicastIPAddressUINT4(d->ParsedOptionList->ServerAddress) == 0)
 {
  ok = 0;
 }
 if (d->ParsedOptionList->SubnetMask == 0)
 {
  ok = 0;
 }
 if (d->ParsedOptionList->LeaseTime == 0)
 {
  d->ParsedOptionList->LeaseTime = IPC_DHCP_DEFAULT_LEASE;
 }
 if (d->ParsedOptionList->LeaseTime <= IPC_DHCP_MIN_LEASE)
 {
  d->ParsedOptionList->LeaseTime = IPC_DHCP_MIN_LEASE;
 }

 if (ok == 0)
 {
  FreeDHCPv4Data(d);
  return 0;
 }


 Zero(&req, sizeof(req));
 req.Opcode = DHCP_REQUEST;
 StrCpy(req.Hostname, sizeof(req.Hostname), ipc->ClientHostname);
 req.ServerAddress = d->ParsedOptionList->ServerAddress;
 req.RequestedIp = d->ParsedOptionList->ClientAddress;
 IPCDhcpSetConditionalUserClass(ipc, &req);

 d2 = IPCSendDhcpRequest(ipc, ((void*)0), tran_id, &req, DHCP_ACK, IPC_DHCP_TIMEOUT, discon_poll_tube);
 if (d2 == ((void*)0))
 {
  FreeDHCPv4Data(d);
  return 0;
 }


 ok = 1;
 if (IsValidUnicastIPAddressUINT4(d2->ParsedOptionList->ClientAddress) == 0)
 {
  ok = 0;
 }
 if (IsValidUnicastIPAddressUINT4(d2->ParsedOptionList->ServerAddress) == 0)
 {
  ok = 0;
 }
 if (d2->ParsedOptionList->SubnetMask == 0)
 {
  ok = 0;
 }
 if (d2->ParsedOptionList->LeaseTime == 0)
 {
  d2->ParsedOptionList->LeaseTime = IPC_DHCP_DEFAULT_LEASE;
 }
 if (d2->ParsedOptionList->LeaseTime <= IPC_DHCP_MIN_LEASE)
 {
  d2->ParsedOptionList->LeaseTime = IPC_DHCP_MIN_LEASE;
 }

 if (ok == 0)
 {
  FreeDHCPv4Data(d);
  FreeDHCPv4Data(d2);
  return 0;
 }

 Copy(opt, d2->ParsedOptionList, sizeof(DHCP_OPTION_LIST));

 FreeDHCPv4Data(d);
 FreeDHCPv4Data(d2);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int cao ;
typedef int UINT ;
struct TYPE_9__ {scalar_t__ IsL3Mode; } ;
struct TYPE_8__ {int LeaseTime; int ClasslessRoute; int Gateway; int SubnetMask; int ClientAddress; } ;
struct TYPE_7__ {int L3DhcpRenewInterval; int DhcpAllocFailed; int Done; int * SockEvent; int * Ipc; scalar_t__ L3NextDhcpRenewTick; int L3ClientAddressOption; int TubeForDisconnect; TYPE_4__ Param; int ErrorCode; int Cedar; } ;
typedef int THREAD ;
typedef TYPE_1__ IPC_ASYNC ;
typedef int IP ;
typedef TYPE_2__ DHCP_OPTION_LIST ;


 int Copy (int *,TYPE_2__*,int) ;
 int Debug (char*) ;
 int FreeIPC (int *) ;
 scalar_t__ IPCDhcpAllocateIP (int *,TYPE_2__*,int ) ;
 int IPCSetIPv4Parameters (int *,int *,int *,int *,int *) ;
 int * NewIPCByParam (int ,TYPE_4__*,int *) ;
 int SetSockEvent (int *) ;
 scalar_t__ Tick64 () ;
 int UINTToIP (int *,int ) ;
 int Zero (TYPE_2__*,int) ;

void IPCAsyncThreadProc(THREAD *thread, void *param)
{
 IPC_ASYNC *a;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 a = (IPC_ASYNC *)param;


 a->Ipc = NewIPCByParam(a->Cedar, &a->Param, &a->ErrorCode);

 if (a->Ipc != ((void*)0))
 {
  if (a->Param.IsL3Mode)
  {
   DHCP_OPTION_LIST cao;

   Zero(&cao, sizeof(cao));


   Debug("IPCDhcpAllocateIP() start...\n");
   if (IPCDhcpAllocateIP(a->Ipc, &cao, a->TubeForDisconnect))
   {
    UINT t;
    IP ip, subnet, gw;

    Debug("IPCDhcpAllocateIP() Ok.\n");


    t = cao.LeaseTime;
    if (t == 0)
    {
     t = 600;
    }

    t = t / 3;

    if (t == 0)
    {
     t = 1;
    }


    Copy(&a->L3ClientAddressOption, &cao, sizeof(DHCP_OPTION_LIST));
    a->L3DhcpRenewInterval = t * 1000;


    UINTToIP(&ip, cao.ClientAddress);
    UINTToIP(&subnet, cao.SubnetMask);
    UINTToIP(&gw, cao.Gateway);

    IPCSetIPv4Parameters(a->Ipc, &ip, &subnet, &gw, &cao.ClasslessRoute);

    a->L3NextDhcpRenewTick = Tick64() + a->L3DhcpRenewInterval;
   }
   else
   {
    Debug("IPCDhcpAllocateIP() Error.\n");

    a->DhcpAllocFailed = 1;

    FreeIPC(a->Ipc);
    a->Ipc = ((void*)0);
   }
  }
 }


 a->Done = 1;

 if (a->SockEvent != ((void*)0))
 {
  SetSockEvent(a->SockEvent);
 }
}

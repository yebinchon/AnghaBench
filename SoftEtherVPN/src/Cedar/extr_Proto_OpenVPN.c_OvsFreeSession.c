
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {int ServerAddress; } ;
struct TYPE_8__ {TYPE_1__ L3ClientAddressOption; } ;
struct TYPE_7__ {scalar_t__ Mode; TYPE_4__* IpcAsync; int * Ipc; int ** Channels; } ;
typedef TYPE_2__ OPENVPN_SESSION ;
typedef int OPENVPN_CHANNEL ;
typedef int IP ;


 int Free (TYPE_2__*) ;
 int FreeIPC (int *) ;
 int FreeIPCAsync (TYPE_4__*) ;
 int IPCDhcpFreeIP (int *,int *) ;
 int IPCProcessL3Events (int *) ;
 scalar_t__ OPENVPN_MODE_L3 ;
 size_t OPENVPN_NUM_CHANNELS ;
 int OvsFreeChannel (int *) ;
 int UINTToIP (int *,int ) ;

void OvsFreeSession(OPENVPN_SESSION *se)
{
 UINT i;

 if (se == ((void*)0))
 {
  return;
 }


 if (se->Ipc != ((void*)0))
 {
  if (se->Mode == OPENVPN_MODE_L3)
  {
   if (se->IpcAsync != ((void*)0))
   {
    IP dhcp_ip;

    UINTToIP(&dhcp_ip, se->IpcAsync->L3ClientAddressOption.ServerAddress);

    IPCDhcpFreeIP(se->Ipc, &dhcp_ip);
    IPCProcessL3Events(se->Ipc);
   }
  }
 }


 for (i = 0;i < OPENVPN_NUM_CHANNELS;i++)
 {
  OPENVPN_CHANNEL *c = se->Channels[i];

  if (c != ((void*)0))
  {
   OvsFreeChannel(c);
  }
 }


 if (se->Ipc != ((void*)0))
 {
  FreeIPC(se->Ipc);
 }

 if (se->IpcAsync != ((void*)0))
 {
  FreeIPCAsync(se->IpcAsync);
 }

 Free(se);
}

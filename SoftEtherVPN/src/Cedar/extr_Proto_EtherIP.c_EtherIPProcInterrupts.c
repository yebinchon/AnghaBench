
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


typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_22__ {int LockSettings; int Services; } ;
struct TYPE_21__ {int Size; int * Buf; } ;
struct TYPE_20__ {int Password; int UserName; int HubName; } ;
struct TYPE_17__ {int Password; int UserName; int HubName; } ;
struct TYPE_19__ {scalar_t__ LastEtherIPSettingVerNo; char* ClientId; scalar_t__ LastConnectFailedTick; scalar_t__ Now; int CurrentIPSecServiceSetting; int L2TPv3; int * Ipc; int SendPacketList; int SockEvent; int Lock; int Ref; int * IpcConnectThread; TYPE_3__* Ike; TYPE_7__* IPsec; TYPE_2__ CurrentEtherIPIdSetting; } ;
struct TYPE_18__ {int ThreadList; TYPE_1__* IPsec; } ;
struct TYPE_16__ {scalar_t__ EtherIPIdListSettingVerNo; } ;
typedef int IPSEC_SERVICES ;
typedef TYPE_4__ ETHERIP_SERVER ;
typedef TYPE_5__ ETHERIP_ID ;
typedef TYPE_6__ BLOCK ;


 int Add (int ,TYPE_6__*) ;
 int AddRef (int ) ;
 int AddThreadToThreadList (int ,int *) ;
 int* Clone (int *,int) ;
 int Copy (int*,int *,int) ;
 scalar_t__ ETHERIP_VPN_CONNECT_RETRY_INTERVAL ;
 int EtherIPIpcConnectThread ;
 int EtherIPLog (TYPE_4__*,char*) ;
 int FreeBlock (TYPE_6__*) ;
 int FreeIPC (int *) ;
 int IPCProcessInterrupts (int *) ;
 TYPE_6__* IPCRecvL2 (int *) ;
 int IPCSetSockEventWhenRecvL2Packet (int *,int ) ;
 int IsIPCConnected (int *) ;
 int Lock (int ) ;
 int* Malloc (int) ;
 TYPE_6__* NewBlock (int*,int,int ) ;
 int * NewThread (int ,TYPE_4__*) ;
 int SearchEtherIPId (TYPE_7__*,TYPE_5__*,char*) ;
 scalar_t__ StrCmp (int ,int ) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int Unlock (int ) ;

void EtherIPProcInterrupts(ETHERIP_SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }


 if (s->Ipc != ((void*)0))
 {
  if (s->Ike->IPsec->EtherIPIdListSettingVerNo != s->LastEtherIPSettingVerNo)
  {
   ETHERIP_ID id;
   bool ok = 1;

   s->LastEtherIPSettingVerNo = s->Ike->IPsec->EtherIPIdListSettingVerNo;

   if (SearchEtherIPId(s->IPsec, &id, s->ClientId) == 0 &&
    SearchEtherIPId(s->IPsec, &id, "*") == 0)
   {
    ok = 0;
   }
   else
   {
    if (StrCmpi(s->CurrentEtherIPIdSetting.HubName, id.HubName) != 0 ||
     StrCmpi(s->CurrentEtherIPIdSetting.UserName, id.UserName) != 0 ||
     StrCmp(s->CurrentEtherIPIdSetting.Password, id.Password) != 0)
    {
     ok = 0;
    }
   }

   if (ok == 0)
   {

    FreeIPC(s->Ipc);
    s->Ipc = ((void*)0);

    EtherIPLog(s, "LE_RECONNECT");
   }
  }
 }


 Lock(s->Lock);
 {
  if (s->Ipc == ((void*)0))
  {
   if (s->IpcConnectThread == ((void*)0))
   {
    if ((s->LastConnectFailedTick == 0) || ((s->LastConnectFailedTick + (UINT64)ETHERIP_VPN_CONNECT_RETRY_INTERVAL) <= s->Now))
    {
     Lock(s->IPsec->LockSettings);
     {
      Copy(&s->CurrentIPSecServiceSetting, &s->IPsec->Services, sizeof(IPSEC_SERVICES));
     }
     Unlock(s->IPsec->LockSettings);

     s->IpcConnectThread = NewThread(EtherIPIpcConnectThread, s);
     AddThreadToThreadList(s->Ike->ThreadList, s->IpcConnectThread);
     AddRef(s->Ref);
    }
   }
  }
 }
 Unlock(s->Lock);

 if (s->Ipc != ((void*)0))
 {

  IPCSetSockEventWhenRecvL2Packet(s->Ipc, s->SockEvent);


  IPCProcessInterrupts(s->Ipc);


  while (1)
  {
   BLOCK *b = IPCRecvL2(s->Ipc);
   UCHAR *dst;
   UINT dst_size;

   if (b == ((void*)0))
   {
    break;
   }

   if (b->Size >= 14)
   {
    BLOCK *block;



    if (s->L2TPv3 == 0)
    {
     dst_size = b->Size + 2;
     dst = Malloc(dst_size);

     dst[0] = 0x30;
     dst[1] = 0x00;

     Copy(dst + 2, b->Buf, b->Size);
    }
    else
    {
     dst = Clone(b->Buf, b->Size);
     dst_size = b->Size;
    }

    block = NewBlock(dst, dst_size, 0);

    Add(s->SendPacketList, block);
   }

   FreeBlock(b);
  }

  if (IsIPCConnected(s->Ipc) == 0)
  {

   FreeIPC(s->Ipc);
   s->Ipc = ((void*)0);
  }
 }
}

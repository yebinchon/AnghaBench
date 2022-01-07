
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int Active; int NatTable; TYPE_8__* NativeNat; } ;
typedef TYPE_3__ VH ;
typedef size_t UINT ;
struct TYPE_26__ {int Online; int lock; TYPE_3__* Virtual; } ;
struct TYPE_25__ {TYPE_2__* NatTableForSend; } ;
struct TYPE_24__ {int Status; int TotalRecv; int TotalSent; int LastCommTime; int CreatedTime; int DestPort; int SrcPort; int DestIp; int SrcIp; int Protocol; int Id; } ;
struct TYPE_23__ {int TcpStatus; TYPE_1__* Sock; int LastCommTime; int CreatedTime; int DestPort; int SrcPort; int DestIp; int SrcIp; int Protocol; int Id; } ;
struct TYPE_22__ {size_t NumItem; TYPE_4__* Items; } ;
struct TYPE_21__ {int TcpStatus; int RecvSize; int SendSize; int DestIp; int DestHost; int SrcIp; int SrcHost; void* LastCommTime; void* CreatedTime; int DestPort; int SrcPort; int Protocol; int Id; } ;
struct TYPE_19__ {int AllList; } ;
struct TYPE_18__ {scalar_t__ Type; int RemoteHostname; int RecvSize; int SendSize; } ;
typedef TYPE_4__ RPC_ENUM_NAT_ITEM ;
typedef TYPE_5__ RPC_ENUM_NAT ;
typedef TYPE_6__ NAT_ENTRY ;
typedef TYPE_7__ NATIVE_NAT_ENTRY ;
typedef TYPE_8__ NATIVE_NAT ;
typedef TYPE_9__ NAT ;


 size_t ERR_NO_ERROR ;
 size_t ERR_OFFLINE ;
 int FreeRpcEnumNat (TYPE_5__*) ;
 int IPToStr32 (int ,int,int ) ;
 void* LIST_DATA (int ,size_t) ;
 size_t LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int LockVirtual (TYPE_3__*) ;
 scalar_t__ NnIsActive (TYPE_3__*) ;
 scalar_t__ SOCK_TCP ;
 int StrCpy (int ,int,int ) ;
 void* TickToTime (int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int UnlockVirtual (TYPE_3__*) ;
 int Zero (TYPE_5__*,int) ;
 TYPE_4__* ZeroMalloc (int) ;

UINT NtEnumNatList(NAT *n, RPC_ENUM_NAT *t)
{
 UINT ret = ERR_NO_ERROR;
 VH *v = ((void*)0);

 Lock(n->lock);
 {
  v = n->Virtual;

  if (n->Online == 0 || v == ((void*)0))
  {
   ret = ERR_OFFLINE;
  }
  else
  {
   LockVirtual(v);
   {
    if (v->Active == 0)
    {
     ret = ERR_OFFLINE;
    }
    else
    {
     FreeRpcEnumNat(t);
     Zero(t, sizeof(RPC_ENUM_NAT));

     LockList(v->NatTable);
     {
      UINT i;
      UINT num_usermode_nat = LIST_NUM(v->NatTable);
      UINT num_kernel_mode_nat = 0;
      NATIVE_NAT *native = ((void*)0);

      if (NnIsActive(v) && (v->NativeNat != ((void*)0)))
      {
       native = v->NativeNat;

       num_kernel_mode_nat = LIST_NUM(native->NatTableForSend->AllList);
      }

      t->NumItem = num_usermode_nat + num_kernel_mode_nat;
      t->Items = ZeroMalloc(sizeof(RPC_ENUM_NAT_ITEM) * t->NumItem);


      for (i = 0;i < num_usermode_nat;i++)
      {
       NAT_ENTRY *nat = LIST_DATA(v->NatTable, i);
       RPC_ENUM_NAT_ITEM *e = &t->Items[i];

       e->Id = nat->Id;
       e->Protocol = nat->Protocol;
       e->SrcIp = nat->SrcIp;
       e->DestIp = nat->DestIp;
       e->SrcPort = nat->SrcPort;
       e->DestPort = nat->DestPort;

       e->CreatedTime = TickToTime(nat->CreatedTime);
       e->LastCommTime = TickToTime(nat->LastCommTime);

       IPToStr32(e->SrcHost, sizeof(e->SrcHost), e->SrcIp);
       IPToStr32(e->DestHost, sizeof(e->DestHost), e->DestIp);

       if (nat->Sock != ((void*)0))
       {
        e->SendSize = nat->Sock->SendSize;
        e->RecvSize = nat->Sock->RecvSize;

        if (nat->Sock->Type == SOCK_TCP)
        {
         StrCpy(e->DestHost, sizeof(e->DestHost), nat->Sock->RemoteHostname);
        }
       }

       e->TcpStatus = nat->TcpStatus;
      }


      if (native != ((void*)0))
      {
       for (i = 0;i < num_kernel_mode_nat;i++)
       {
        NATIVE_NAT_ENTRY *nat = LIST_DATA(native->NatTableForSend->AllList, i);
        RPC_ENUM_NAT_ITEM *e = &t->Items[num_usermode_nat + i];

        e->Id = nat->Id;
        e->Protocol = nat->Protocol;
        e->SrcIp = nat->SrcIp;
        e->DestIp = nat->DestIp;
        e->SrcPort = nat->SrcPort;
        e->DestPort = nat->DestPort;
        e->CreatedTime = TickToTime(nat->CreatedTime);
        e->LastCommTime = TickToTime(nat->LastCommTime);

        IPToStr32(e->SrcHost, sizeof(e->SrcHost), e->SrcIp);
        IPToStr32(e->DestHost, sizeof(e->DestHost), e->DestIp);

        e->SendSize = nat->TotalSent;
        e->RecvSize = nat->TotalRecv;

        e->TcpStatus = nat->Status;
       }
      }
     }
     UnlockList(v->NatTable);
    }
   }
   UnlockVirtual(v);
  }
 }
 Unlock(n->lock);

 return ret;
}

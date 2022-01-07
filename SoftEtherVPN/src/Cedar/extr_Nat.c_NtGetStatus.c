
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


struct TYPE_17__ {int DhcpLeaseList; int NatTable; TYPE_6__* NativeNat; } ;
typedef TYPE_2__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int lock; TYPE_2__* Virtual; } ;
struct TYPE_21__ {TYPE_1__* NatTableForSend; } ;
struct TYPE_20__ {int Protocol; } ;
struct TYPE_19__ {int Protocol; } ;
struct TYPE_18__ {int IsRawIpMode; int IsKernelMode; scalar_t__ NumDhcpClients; int NumDnsSessions; int NumIcmpSessions; int NumUdpSessions; int NumTcpSessions; } ;
struct TYPE_16__ {int AllList; } ;
typedef TYPE_3__ RPC_NAT_STATUS ;
typedef TYPE_4__ NAT_ENTRY ;
typedef TYPE_5__ NATIVE_NAT_ENTRY ;
typedef TYPE_6__ NATIVE_NAT ;
typedef TYPE_7__ NAT ;


 scalar_t__ ERR_NO_ERROR ;
 int FreeRpcNatStatus (TYPE_3__*) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int LockVirtual (TYPE_2__*) ;




 scalar_t__ NnIsActive (TYPE_2__*) ;
 int NnIsActiveEx (TYPE_2__*,int *) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int UnlockVirtual (TYPE_2__*) ;
 int Zero (TYPE_3__*,int) ;

UINT NtGetStatus(NAT *n, RPC_NAT_STATUS *t)
{
 Lock(n->lock);
 {
  VH *v = n->Virtual;
  FreeRpcNatStatus(t);
  Zero(t, sizeof(RPC_NAT_STATUS));

  LockVirtual(v);
  {
   UINT i;

   LockList(v->NatTable);
   {
    for (i = 0;i < LIST_NUM(v->NatTable);i++)
    {
     NAT_ENTRY *e = LIST_DATA(v->NatTable, i);

     switch (e->Protocol)
     {
     case 129:
      t->NumTcpSessions++;
      break;

     case 128:
      t->NumUdpSessions++;
      break;

     case 130:
      t->NumIcmpSessions++;
      break;

     case 131:
      t->NumDnsSessions++;
      break;
     }
    }

    if (NnIsActive(v) && v->NativeNat != ((void*)0))
    {
     NATIVE_NAT *nn = v->NativeNat;

     for (i = 0;i < LIST_NUM(nn->NatTableForSend->AllList);i++)
     {
      NATIVE_NAT_ENTRY *e = LIST_DATA(nn->NatTableForSend->AllList, i);

      switch (e->Protocol)
      {
      case 129:
       t->NumTcpSessions++;
       break;

      case 128:
       t->NumUdpSessions++;
       break;

      case 130:
       t->NumIcmpSessions++;
       break;

      case 131:
       t->NumDnsSessions++;
       break;
      }
     }
    }
   }
   UnlockList(v->NatTable);

   t->NumDhcpClients = LIST_NUM(v->DhcpLeaseList);

   t->IsKernelMode = NnIsActiveEx(v, &t->IsRawIpMode);
  }
  UnlockVirtual(v);
 }
 Unlock(n->lock);

 return ERR_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int Active; int DhcpLeaseList; } ;
typedef TYPE_1__ VH ;
typedef size_t UINT ;
struct TYPE_18__ {int Hostname; int Mask; int IpAddress; int MacAddress; int ExpireTime; int LeasedTime; int Id; } ;
struct TYPE_17__ {int Online; int lock; TYPE_1__* Virtual; } ;
struct TYPE_16__ {int NumItem; TYPE_2__* Items; } ;
struct TYPE_15__ {int Hostname; int Mask; int IpAddress; int MacAddress; void* ExpireTime; void* LeasedTime; int Id; } ;
typedef TYPE_2__ RPC_ENUM_DHCP_ITEM ;
typedef TYPE_3__ RPC_ENUM_DHCP ;
typedef TYPE_4__ NAT ;
typedef TYPE_5__ DHCP_LEASE ;


 int Copy (int ,int ,int) ;
 size_t ERR_NO_ERROR ;
 size_t ERR_OFFLINE ;
 int FreeRpcEnumDhcp (TYPE_3__*) ;
 TYPE_5__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int LockVirtual (TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 void* TickToTime (int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int UnlockVirtual (TYPE_1__*) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

UINT NtEnumDhcpList(NAT *n, RPC_ENUM_DHCP *t)
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
     FreeRpcEnumDhcp(t);
     Zero(t, sizeof(RPC_ENUM_DHCP));

     LockList(v->DhcpLeaseList);
     {
      UINT i;
      t->NumItem = LIST_NUM(v->DhcpLeaseList);
      t->Items = ZeroMalloc(sizeof(RPC_ENUM_DHCP_ITEM) * t->NumItem);

      for (i = 0;i < t->NumItem;i++)
      {
       DHCP_LEASE *dhcp = LIST_DATA(v->DhcpLeaseList, i);
       RPC_ENUM_DHCP_ITEM *e = &t->Items[i];

       e->Id = dhcp->Id;
       e->LeasedTime = TickToTime(dhcp->LeasedTime);
       e->ExpireTime = TickToTime(dhcp->ExpireTime);
       Copy(e->MacAddress, dhcp->MacAddress, 6);
       e->IpAddress = dhcp->IpAddress;
       e->Mask = dhcp->Mask;
       StrCpy(e->Hostname, sizeof(e->Hostname), dhcp->Hostname);
      }
     }
     UnlockList(v->DhcpLeaseList);
    }
   }
   UnlockVirtual(v);
  }
 }
 Unlock(n->lock);

 return ret;
}

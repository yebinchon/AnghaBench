
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {TYPE_1__* NatTableForRecv; } ;
struct TYPE_8__ {scalar_t__ SrcIp; scalar_t__ Protocol; scalar_t__ LastCommTime; } ;
struct TYPE_7__ {int AllList; } ;
typedef TYPE_2__ NATIVE_NAT_ENTRY ;
typedef TYPE_3__ NATIVE_NAT ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

NATIVE_NAT_ENTRY *NnGetOldestNatEntryOfIp(NATIVE_NAT *t, UINT ip, UINT protocol)
{
 UINT i;
 NATIVE_NAT_ENTRY *oldest = ((void*)0);
 UINT64 oldest_tick = 0xFFFFFFFFFFFFFFFFULL;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(t->NatTableForRecv->AllList);i++)
 {
  NATIVE_NAT_ENTRY *e = LIST_DATA(t->NatTableForRecv->AllList, i);

  if (e->SrcIp == ip)
  {
   if (e->Protocol == protocol)
   {
    if (e->LastCommTime <= oldest_tick)
    {
     oldest_tick = e->LastCommTime;
     oldest = e;
    }
   }
  }
 }

 return oldest;
}

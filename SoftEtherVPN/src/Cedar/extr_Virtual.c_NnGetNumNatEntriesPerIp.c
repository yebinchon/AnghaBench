
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {TYPE_1__* NatTableForRecv; } ;
struct TYPE_7__ {scalar_t__ SrcIp; scalar_t__ Protocol; } ;
struct TYPE_6__ {int AllList; } ;
typedef TYPE_2__ NATIVE_NAT_ENTRY ;
typedef TYPE_3__ NATIVE_NAT ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

UINT NnGetNumNatEntriesPerIp(NATIVE_NAT *t, UINT src_ip, UINT protocol)
{
 UINT ret = 0;
 UINT i;

 if (t == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(t->NatTableForRecv->AllList);i++)
 {
  NATIVE_NAT_ENTRY *e = LIST_DATA(t->NatTableForRecv->AllList, i);

  if (e->SrcIp == src_ip)
  {
   if (e->Protocol == protocol)
   {
    ret++;
   }
  }
 }

 return ret;
}

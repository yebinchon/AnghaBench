
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int EntryList; } ;
typedef TYPE_1__ IPTABLES_STATE ;
typedef TYPE_1__ IPTABLES_ENTRY ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeIpTablesState(IPTABLES_STATE *s)
{
 UINT i;
 if (s == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(s->EntryList);i++)
 {
  IPTABLES_ENTRY *e = LIST_DATA(s->EntryList, i);

  Free(e);
 }

 ReleaseList(s->EntryList);

 Free(s);
}

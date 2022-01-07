
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmdline ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int ConditionAndArgs; int Chain; int DummyMark; int DummyDestIP; int DummySrcIp; } ;
struct TYPE_6__ {int EntryList; } ;
typedef TYPE_1__ IPTABLES_STATE ;
typedef TYPE_2__ IPTABLES_ENTRY ;


 int Format (char*,int,char*,int ,int ) ;
 int FreeIpTablesState (TYPE_1__*) ;
 scalar_t__ GetCurrentIpTableLineNumber (int ,int *,int *,int ) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_PATH ;
 int system (char*) ;

void EndAddIpTablesEntryForNativeStack(IPTABLES_STATE *s)
{
 UINT i;
 if (s == ((void*)0))
 {
  return;
 }


 for (i = 0; i < LIST_NUM(s->EntryList);i++)
 {
  IPTABLES_ENTRY *e = LIST_DATA(s->EntryList, i);
  UINT j;

  for (j = 0;j < 100;j++)
  {
   if (GetCurrentIpTableLineNumber(e->Chain, &e->DummySrcIp, &e->DummyDestIP, e->DummyMark) != 0)
   {
    char cmdline[MAX_PATH];

    Format(cmdline, sizeof(cmdline),
     "iptables -D %s %s",
     e->Chain, e->ConditionAndArgs);

    system(cmdline);
   }
   else
   {
    break;
   }
  }
 }

 FreeIpTablesState(s);
}

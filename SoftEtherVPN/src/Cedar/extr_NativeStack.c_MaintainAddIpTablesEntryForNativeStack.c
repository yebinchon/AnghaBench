
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmdline ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int DummyMark; int DummyDestIP; int DummySrcIp; int Chain; int ConditionAndArgs; } ;
struct TYPE_5__ {int HasError; int EntryList; } ;
typedef TYPE_1__ IPTABLES_STATE ;
typedef TYPE_2__ IPTABLES_ENTRY ;


 int Debug (char*,char*) ;
 int Format (char*,int,char*,int ,int ) ;
 scalar_t__ GetCurrentIpTableLineNumber (int ,int *,int *,int ) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_PATH ;
 int system (char*) ;

bool MaintainAddIpTablesEntryForNativeStack(IPTABLES_STATE *s)
{
 UINT i;
 bool ret = 0;
 if (s == ((void*)0))
 {
  return 0;
 }

 if (s->HasError)
 {
  return 0;
 }


 for (i = 0; i < LIST_NUM(s->EntryList);i++)
 {
  IPTABLES_ENTRY *e = LIST_DATA(s->EntryList, i);

  if (GetCurrentIpTableLineNumber(e->Chain, &e->DummySrcIp, &e->DummyDestIP, e->DummyMark) == 0)
  {
   char cmdline[MAX_PATH];

   Format(cmdline, sizeof(cmdline),
    "iptables -I %s %s",
    e->Chain, e->ConditionAndArgs);

   system(cmdline);

   if (GetCurrentIpTableLineNumber(e->Chain, &e->DummySrcIp, &e->DummyDestIP, e->DummyMark) == 0)
   {
    Debug("Run \"%s\" failed.\n", cmdline);
    s->HasError = 1;
    break;
   }
   else
   {
    Debug("Run \"%s\" ok.\n", cmdline);
    ret = 1;
   }
  }
 }

 return ret;
}

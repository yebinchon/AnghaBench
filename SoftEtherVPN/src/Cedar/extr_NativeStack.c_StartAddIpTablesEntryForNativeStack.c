
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cmdline ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int DummyMark; int DummyDestIP; int DummySrcIp; int Chain; int ConditionAndArgs; } ;
struct TYPE_8__ {int EntryList; int SeedHash; } ;
typedef TYPE_1__ IPTABLES_STATE ;
typedef TYPE_2__ IPTABLES_ENTRY ;


 int Add (int ,TYPE_2__*) ;
 int Debug (char*,char*) ;
 int EndAddIpTablesEntryForNativeStack (TYPE_1__*) ;
 int Format (char*,int,char*,int ,int ,...) ;
 int GenerateDummyIpAndMark (int ,TYPE_2__*,int) ;
 scalar_t__ GetCurrentIpTableLineNumber (int ,int *,int *,int ) ;
 scalar_t__ IsIpTablesSupported () ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_PATH ;
 int NN_RAW_IP_PORT_END ;
 int NN_RAW_IP_PORT_START ;
 int NewListFast (int *) ;
 int Sha1 (int ,void*,scalar_t__) ;
 int StrCpy (int ,int,char*) ;
 void* ZeroMalloc (int) ;
 int system (char*) ;

IPTABLES_STATE *StartAddIpTablesEntryForNativeStack(void *seed, UINT seed_size)
{
 IPTABLES_STATE *ret = ((void*)0);
 bool ok = 0;

 if (IsIpTablesSupported())
 {
  IPTABLES_ENTRY *e;
  UINT i;

  ret = ZeroMalloc(sizeof(IPTABLES_STATE));

  ret->EntryList = NewListFast(((void*)0));

  Sha1(ret->SeedHash, seed, seed_size);


  e = ZeroMalloc(sizeof(IPTABLES_ENTRY));
  GenerateDummyIpAndMark(ret->SeedHash, e, 0);
  StrCpy(e->Chain, sizeof(e->Chain), "OUTPUT");
  Format(e->ConditionAndArgs, sizeof(e->ConditionAndArgs),
   "-p tcp --tcp-flags RST RST --sport %u:%u ! -s %r/32 ! -d %r/32 -m connmark ! --mark 0x%x -j DROP",
   NN_RAW_IP_PORT_START, NN_RAW_IP_PORT_END,
   &e->DummySrcIp, &e->DummyDestIP, e->DummyMark);
  Add(ret->EntryList, e);

  e = ZeroMalloc(sizeof(IPTABLES_ENTRY));
  GenerateDummyIpAndMark(ret->SeedHash, e, 1);
  StrCpy(e->Chain, sizeof(e->Chain), "OUTPUT");
  Format(e->ConditionAndArgs, sizeof(e->ConditionAndArgs),
   "-p icmp --icmp-type 3/3 ! -s %r/32 ! -d %r/32 -m connmark ! --mark 0x%x -j DROP",
   &e->DummySrcIp, &e->DummyDestIP, e->DummyMark);
  Add(ret->EntryList, e);

  ok = 1;


  for (i = 0; i < LIST_NUM(ret->EntryList);i++)
  {
   UINT j;
   IPTABLES_ENTRY *e = LIST_DATA(ret->EntryList, i);

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
     ok = 0;
     break;
    }
    else
    {
     Debug("Run \"%s\" ok.\n", cmdline);
    }
   }
  }
 }

 if (ok == 0)
 {
  EndAddIpTablesEntryForNativeStack(ret);
  ret = ((void*)0);
 }

 return ret;
}

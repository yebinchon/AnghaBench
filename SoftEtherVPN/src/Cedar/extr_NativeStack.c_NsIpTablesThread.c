
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int exe_name ;
typedef int UINT ;
struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {int IpTablesInitOk; int IpTablesHaltEvent; scalar_t__ IpTablesHalt; int MacAddress; } ;
typedef int THREAD ;
typedef TYPE_1__ NATIVE_STACK ;
typedef int IPTABLES_STATE ;
typedef TYPE_2__ BUF ;


 int EndAddIpTablesEntryForNativeStack (int *) ;
 int FreeBuf (TYPE_2__*) ;
 int GetExeName (char*,int) ;
 int MAX_PATH ;
 int MIN (int,int ) ;
 scalar_t__ MaintainAddIpTablesEntryForNativeStack (int *) ;
 int NS_CHECK_IPTABLES_INTERVAL_INIT ;
 int NS_CHECK_IPTABLES_INTERVAL_MAX ;
 TYPE_2__* NewBuf () ;
 int NoticeThreadInit (int *) ;
 int * StartAddIpTablesEntryForNativeStack (int ,int ) ;
 int Wait (int ,int) ;
 int WriteBuf (TYPE_2__*,int ,int) ;
 int WriteBufStr (TYPE_2__*,char*) ;

void NsIpTablesThread(THREAD *thread, void *param)
{
 IPTABLES_STATE *state;
 NATIVE_STACK *s;
 UINT counter = 0;
 BUF *seed_buf;
 char exe_name[MAX_PATH];
 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 s = (NATIVE_STACK *)param;

 seed_buf = NewBuf();

 WriteBuf(seed_buf, s->MacAddress, 6);

 GetExeName(exe_name, sizeof(exe_name));
 WriteBufStr(seed_buf, exe_name);

 state = StartAddIpTablesEntryForNativeStack(seed_buf->Buf, seed_buf->Size);

 FreeBuf(seed_buf);

 if (state == ((void*)0))
 {
  NoticeThreadInit(thread);
  return;
 }

 s->IpTablesInitOk = 1;
 NoticeThreadInit(thread);

 while (1)
 {
  UINT wait_interval;

  if (s->IpTablesHalt)
  {
   break;
  }

  if (MaintainAddIpTablesEntryForNativeStack(state))
  {
   counter = 0;
  }

  counter++;
  wait_interval = NS_CHECK_IPTABLES_INTERVAL_INIT * counter;
  wait_interval = MIN(wait_interval, NS_CHECK_IPTABLES_INTERVAL_MAX);


  Wait(s->IpTablesHaltEvent, wait_interval);
 }

 EndAddIpTablesEntryForNativeStack(state);
}

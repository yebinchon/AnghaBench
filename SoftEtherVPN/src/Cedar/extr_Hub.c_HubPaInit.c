
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int MonitorPort; void* GroupnameHash; void* UsernameHash; int StormList; TYPE_4__* Session; int Now; int PacketQueue; int Cancel; } ;
struct TYPE_12__ {TYPE_3__* Hub; TYPE_2__* Policy; TYPE_1__* PacketAdapter; int GroupName; int Username; } ;
struct TYPE_11__ {int MonitorList; } ;
struct TYPE_10__ {scalar_t__ MonitorPort; } ;
struct TYPE_9__ {TYPE_5__* Param; } ;
typedef TYPE_4__ SESSION ;
typedef TYPE_5__ HUB_PA ;


 int CompareStormList ;
 int Insert (int ,TYPE_4__*) ;
 int LockList (int ) ;
 int NewCancel () ;
 int NewList (int ) ;
 int NewQueue () ;
 int Tick64 () ;
 int UnlockList (int ) ;
 void* UsernameToInt64 (int ) ;
 TYPE_5__* ZeroMalloc (int) ;

bool HubPaInit(SESSION *s)
{

 HUB_PA *pa = ZeroMalloc(sizeof(HUB_PA));
 pa->Cancel = NewCancel();
 pa->PacketQueue = NewQueue();
 pa->Now = Tick64();
 pa->Session = s;
 pa->StormList = NewList(CompareStormList);
 pa->UsernameHash = UsernameToInt64(s->Username);
 pa->GroupnameHash = UsernameToInt64(s->GroupName);

 s->PacketAdapter->Param = pa;

 if (s->Policy->MonitorPort)
 {

  pa->MonitorPort = 1;


  LockList(s->Hub->MonitorList);
  {
   Insert(s->Hub->MonitorList, s);
  }
  UnlockList(s->Hub->MonitorList);
 }

 return 1;
}

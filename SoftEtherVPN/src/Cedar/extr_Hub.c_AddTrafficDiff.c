
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int FarmMember; char* Name; TYPE_1__* Cedar; } ;
struct TYPE_8__ {int Traffic; int Type; void* Name; void* HubName; } ;
struct TYPE_7__ {int TrafficDiffList; } ;
typedef TYPE_2__ TRAFFIC_DIFF ;
typedef int TRAFFIC ;
typedef TYPE_3__ HUB ;


 int Copy (int *,int *,int) ;
 void* CopyStr (char*) ;
 int Insert (int ,TYPE_2__*) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 scalar_t__ MAX_TRAFFIC_DIFF ;
 int UnlockList (int ) ;
 TYPE_2__* ZeroMallocFast (int) ;

void AddTrafficDiff(HUB *h, char *name, UINT type, TRAFFIC *traffic)
{
 TRAFFIC_DIFF *d;

 if (h == ((void*)0) || h->FarmMember == 0 || name == ((void*)0) || traffic == ((void*)0))
 {
  return;
 }

 if (LIST_NUM(h->Cedar->TrafficDiffList) > MAX_TRAFFIC_DIFF)
 {
  return;
 }

 d = ZeroMallocFast(sizeof(TRAFFIC_DIFF));
 d->HubName = CopyStr(h->Name);
 d->Name = CopyStr(name);
 d->Type = type;
 Copy(&d->Traffic, traffic, sizeof(TRAFFIC));

 LockList(h->Cedar->TrafficDiffList);
 {
  Insert(h->Cedar->TrafficDiffList, d);
 }
 UnlockList(h->Cedar->TrafficDiffList);
}

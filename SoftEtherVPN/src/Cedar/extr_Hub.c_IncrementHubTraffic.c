
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int t ;
struct TYPE_25__ {int FarmMember; int Name; int TrafficLock; TYPE_13__* Traffic; TYPE_12__* OldTraffic; } ;
struct TYPE_21__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_18__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_24__ {TYPE_4__ Recv; TYPE_1__ Send; } ;
struct TYPE_23__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_22__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_20__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_19__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_17__ {TYPE_5__ Recv; TYPE_2__ Send; } ;
struct TYPE_16__ {TYPE_6__ Recv; TYPE_3__ Send; } ;
typedef TYPE_7__ TRAFFIC ;
typedef TYPE_8__ HUB ;


 int AddTrafficDiff (TYPE_8__*,int ,int ,TYPE_7__*) ;
 int Copy (TYPE_12__*,TYPE_13__*,int) ;
 scalar_t__ IsZero (TYPE_7__*,int) ;
 int Lock (int ) ;
 int TRAFFIC_DIFF_HUB ;
 int Unlock (int ) ;
 int Zero (TYPE_7__*,int) ;

void IncrementHubTraffic(HUB *h)
{
 TRAFFIC t;

 if (h == ((void*)0) || h->FarmMember == 0)
 {
  return;
 }

 Zero(&t, sizeof(t));

 Lock(h->TrafficLock);
 {
  t.Send.BroadcastBytes =
   h->Traffic->Send.BroadcastBytes - h->OldTraffic->Send.BroadcastBytes;
  t.Send.BroadcastCount =
   h->Traffic->Send.BroadcastCount - h->OldTraffic->Send.BroadcastCount;
  t.Send.UnicastBytes =
   h->Traffic->Send.UnicastBytes - h->OldTraffic->Send.UnicastBytes;
  t.Send.UnicastCount =
   h->Traffic->Send.UnicastCount - h->OldTraffic->Send.UnicastCount;
  t.Recv.BroadcastBytes =
   h->Traffic->Recv.BroadcastBytes - h->OldTraffic->Recv.BroadcastBytes;
  t.Recv.BroadcastCount =
   h->Traffic->Recv.BroadcastCount - h->OldTraffic->Recv.BroadcastCount;
  t.Recv.UnicastBytes =
   h->Traffic->Recv.UnicastBytes - h->OldTraffic->Recv.UnicastBytes;
  t.Recv.UnicastCount =
   h->Traffic->Recv.UnicastCount - h->OldTraffic->Recv.UnicastCount;
  Copy(h->OldTraffic, h->Traffic, sizeof(TRAFFIC));
 }
 Unlock(h->TrafficLock);

 if (IsZero(&t, sizeof(TRAFFIC)))
 {
  return;
 }

 AddTrafficDiff(h, h->Name, TRAFFIC_DIFF_HUB, &t);
}

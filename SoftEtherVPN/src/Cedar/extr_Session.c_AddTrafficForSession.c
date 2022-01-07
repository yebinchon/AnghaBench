
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int TrafficLock; int Traffic; } ;
struct TYPE_10__ {TYPE_4__* Hub; TYPE_1__* Cedar; scalar_t__ ServerMode; int TrafficLock; int Traffic; } ;
struct TYPE_9__ {int Recv; int Send; } ;
struct TYPE_8__ {int TrafficLock; int Traffic; } ;
typedef int TRAFFIC_ENTRY ;
typedef TYPE_2__ TRAFFIC ;
typedef TYPE_3__ SESSION ;
typedef TYPE_4__ HUB ;


 int AddTraffic (int ,TYPE_2__*) ;
 int Copy (int *,int *,int) ;
 int Lock (int ) ;
 int Unlock (int ) ;

void AddTrafficForSession(SESSION *s, TRAFFIC *t)
{
 HUB *h;
 TRAFFIC t2;

 if (s == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 Lock(s->TrafficLock);
 {
  AddTraffic(s->Traffic, t);
 }
 Unlock(s->TrafficLock);

 if (s->ServerMode)
 {
  Copy(&t2.Recv, &t->Send, sizeof(TRAFFIC_ENTRY));
  Copy(&t2.Send, &t->Recv, sizeof(TRAFFIC_ENTRY));
  Lock(s->Cedar->TrafficLock);
  {
   AddTraffic(s->Cedar->Traffic, &t2);
  }
  Unlock(s->Cedar->TrafficLock);

  h = s->Hub;
  Lock(h->TrafficLock);
  {
   AddTraffic(h->Traffic, &t2);
  }
  Unlock(h->TrafficLock);
 }
}

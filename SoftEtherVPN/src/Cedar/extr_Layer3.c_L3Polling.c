
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* Switch; } ;
struct TYPE_9__ {int lock; } ;
typedef TYPE_1__ L3SW ;
typedef TYPE_2__ L3IF ;


 int L3DeleteOldArpTable (TYPE_2__*) ;
 int L3DeleteOldIpWaitList (TYPE_2__*) ;
 int L3PollingArpWaitTable (TYPE_2__*) ;
 int L3PollingBeacon (TYPE_2__*) ;
 int L3PollingIpQueue (TYPE_2__*) ;
 int Lock (int ) ;
 int Unlock (int ) ;

void L3Polling(L3IF *f)
{
 L3SW *s;

 if (f == ((void*)0))
 {
  return;
 }

 s = f->Switch;


 Lock(s->lock);
 {

  L3PollingBeacon(f);


  L3PollingIpQueue(f);


  L3DeleteOldArpTable(f);


  L3PollingArpWaitTable(f);


  L3DeleteOldIpWaitList(f);
 }
 Unlock(s->lock);
}

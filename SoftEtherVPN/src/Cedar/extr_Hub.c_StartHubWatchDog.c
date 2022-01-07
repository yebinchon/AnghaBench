
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HaltWatchDog; int WatchDogEvent; } ;
typedef int THREAD ;
typedef TYPE_1__ HUB ;


 int HubWatchDogThread ;
 int NewEvent () ;
 int * NewThread (int ,TYPE_1__*) ;
 int ReleaseThread (int *) ;
 int WaitThreadInit (int *) ;

void StartHubWatchDog(HUB *h)
{
 THREAD *t;

 if (h == ((void*)0))
 {
  return;
 }

 h->HaltWatchDog = 0;
 h->WatchDogEvent = NewEvent();

 t = NewThread(HubWatchDogThread, h);
 WaitThreadInit(t);
 ReleaseThread(t);
}

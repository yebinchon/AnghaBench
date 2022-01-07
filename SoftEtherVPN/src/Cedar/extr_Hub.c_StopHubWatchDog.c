
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HaltWatchDog; int * WatchDogEvent; int * WatchDogThread; } ;
typedef TYPE_1__ HUB ;


 int INFINITE ;
 int ReleaseEvent (int *) ;
 int ReleaseThread (int *) ;
 int Set (int *) ;
 int WaitThread (int *,int ) ;

void StopHubWatchDog(HUB *h)
{

 if (h == ((void*)0))
 {
  return;
 }

 h->HaltWatchDog = 1;
 Set(h->WatchDogEvent);

 WaitThread(h->WatchDogThread, INFINITE);
 ReleaseThread(h->WatchDogThread);
 h->WatchDogThread = ((void*)0);
 h->HaltWatchDog = 0;

 ReleaseEvent(h->WatchDogEvent);
 h->WatchDogEvent = ((void*)0);
}

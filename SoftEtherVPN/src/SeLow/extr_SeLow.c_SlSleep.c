
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int __int64 ;
struct TYPE_3__ {int QuadPart; } ;
typedef int PKTIMER ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int KTIMER ;


 int Executive ;
 int FALSE ;
 int KeInitializeTimerEx (int ,int ) ;
 int KeSetTimerEx (int ,TYPE_1__,int ,int *) ;
 int KeWaitForSingleObject (int ,int ,int ,int ,int *) ;
 int KernelMode ;
 int NotificationTimer ;
 int SlFree (int ) ;
 int SlMalloc (int) ;

void SlSleep(int milliSeconds)
{
 PKTIMER timer = SlMalloc(sizeof(KTIMER));
 LARGE_INTEGER duetime;

 duetime.QuadPart = (__int64)milliSeconds * -10000;
 KeInitializeTimerEx(timer, NotificationTimer);
 KeSetTimerEx(timer, duetime, 0, ((void*)0));

 KeWaitForSingleObject(timer, Executive, KernelMode, FALSE, ((void*)0));

 SlFree(timer);
}

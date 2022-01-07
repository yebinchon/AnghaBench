
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Thread; int Cancel; int HaltEvent; int lock; } ;
typedef TYPE_1__ KEEP ;


 int KeepThread ;
 int NewCancel () ;
 int NewEvent () ;
 int NewLock () ;
 int NewThread (int ,TYPE_1__*) ;
 TYPE_1__* ZeroMalloc (int) ;

KEEP *StartKeep()
{
 KEEP *k = ZeroMalloc(sizeof(KEEP));

 k->lock = NewLock();
 k->HaltEvent = NewEvent();
 k->Cancel = NewCancel();


 k->Thread = NewThread(KeepThread, k);

 return k;
}

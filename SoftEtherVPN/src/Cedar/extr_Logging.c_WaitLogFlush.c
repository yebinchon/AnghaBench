
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ num_item; } ;
struct TYPE_5__ {int FlushEvent; TYPE_3__* RecordQueue; } ;
typedef TYPE_1__ LOG ;


 int LockQueue (TYPE_3__*) ;
 int UnlockQueue (TYPE_3__*) ;
 int Wait (int ,int) ;

void WaitLogFlush(LOG *g)
{

 if (g == ((void*)0))
 {
  return;
 }

 while (1)
 {
  UINT num;
  LockQueue(g->RecordQueue);
  {
   num = g->RecordQueue->num_item;
  }
  UnlockQueue(g->RecordQueue);

  if (num == 0)
  {
   break;
  }

  Wait(g->FlushEvent, 100);
 }
}

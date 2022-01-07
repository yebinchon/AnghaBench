
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int CurrentTcpQueueSizeLock; scalar_t__ CurrentTcpQueueSize; } ;
typedef TYPE_1__ CEDAR ;


 int Lock (int ) ;
 int Unlock (int ) ;

void CedarAddCurrentTcpQueueSize(CEDAR *c, int diff)
{

 if (c == ((void*)0) || diff == 0)
 {
  return;
 }

 Lock(c->CurrentTcpQueueSizeLock);
 {
  int v = (int)c->CurrentTcpQueueSize;
  v += diff;
  c->CurrentTcpQueueSize = (UINT)v;
 }
 Unlock(c->CurrentTcpQueueSizeLock);
}

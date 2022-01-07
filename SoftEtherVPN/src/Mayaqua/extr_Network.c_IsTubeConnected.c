
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* TubePairData; } ;
struct TYPE_4__ {scalar_t__ IsDisconnected; } ;
typedef TYPE_2__ TUBE ;



bool IsTubeConnected(TUBE *t)
{

 if (t == ((void*)0))
 {
  return 0;
 }

 if (t->TubePairData == ((void*)0))
 {
  return 1;
 }

 if (t->TubePairData->IsDisconnected)
 {
  return 0;
 }

 return 1;
}

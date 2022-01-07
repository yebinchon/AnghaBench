
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int LocalBridgeList; } ;
typedef TYPE_1__ CEDAR ;


 int NewList (int *) ;

void InitLocalBridgeList(CEDAR *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 c->LocalBridgeList = NewList(((void*)0));
}

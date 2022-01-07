
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AccessList; } ;
typedef TYPE_1__ HUB ;


 int CmpAccessList ;
 int NewList (int ) ;

void InitAccessList(HUB *hub)
{

 if (hub == ((void*)0))
 {
  return;
 }

 hub->AccessList = NewList(CmpAccessList);
}

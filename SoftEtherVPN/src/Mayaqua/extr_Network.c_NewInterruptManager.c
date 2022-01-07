
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int TickList; } ;
typedef TYPE_1__ INTERRUPT_MANAGER ;


 int CmpInterruptManagerTickList ;
 int NewList (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

INTERRUPT_MANAGER *NewInterruptManager()
{
 INTERRUPT_MANAGER *m = ZeroMalloc(sizeof(INTERRUPT_MANAGER));

 m->TickList = NewList(CmpInterruptManagerTickList);

 return m;
}

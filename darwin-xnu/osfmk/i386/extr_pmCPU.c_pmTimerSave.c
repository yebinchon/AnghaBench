
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pmTimerStateSave ) () ;} ;


 TYPE_1__* pmDispatch ;
 int stub1 () ;

void
pmTimerSave(void)
{
    if (pmDispatch != ((void*)0)
 && pmDispatch->pmTimerStateSave != ((void*)0))
 (*pmDispatch->pmTimerStateSave)();
}

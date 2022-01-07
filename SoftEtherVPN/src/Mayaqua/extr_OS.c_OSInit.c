
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* Init ) () ;} ;


 TYPE_1__* UnixGetDispatchTable () ;
 TYPE_1__* Win32GetDispatchTable () ;
 TYPE_1__* os ;
 int stub1 () ;

void OSInit()
{




 os = UnixGetDispatchTable();



 os->Init();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_is_ready ) () ;} ;
typedef int BOOLEAN ;


 TYPE_1__* controller_get_interface () ;
 int stub1 () ;

BOOLEAN BTM_IsDeviceUp (void)
{
    return controller_get_interface()->get_is_ready();
}

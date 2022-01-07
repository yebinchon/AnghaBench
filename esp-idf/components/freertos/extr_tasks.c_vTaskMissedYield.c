
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pdTRUE ;
 size_t xPortGetCoreID () ;
 int * xYieldPending ;

void vTaskMissedYield( void )
{
 xYieldPending[ xPortGetCoreID() ] = pdTRUE;
}

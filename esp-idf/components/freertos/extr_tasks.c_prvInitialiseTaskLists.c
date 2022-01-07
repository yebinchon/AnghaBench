
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBaseType_t ;


 scalar_t__ configMAX_PRIORITIES ;
 int portNUM_PROCESSORS ;
 int * pxDelayedTaskList ;
 int * pxOverflowDelayedTaskList ;
 int * pxReadyTasksLists ;
 int vListInitialise (int *) ;
 int xDelayedTaskList1 ;
 int xDelayedTaskList2 ;
 int * xPendingReadyList ;
 int xSuspendedTaskList ;
 int xTasksWaitingTermination ;

__attribute__((used)) static void prvInitialiseTaskLists( void )
{
UBaseType_t uxPriority;

 for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 {
  vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
 }

 vListInitialise( &xDelayedTaskList1 );
 vListInitialise( &xDelayedTaskList2 );
 vListInitialise( &xPendingReadyList[ 0 ] );
 if (portNUM_PROCESSORS == 2) {
  vListInitialise( &xPendingReadyList[ 1 ] );
 }
 pxDelayedTaskList = &xDelayedTaskList1;
 pxOverflowDelayedTaskList = &xDelayedTaskList2;
}

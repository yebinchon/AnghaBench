
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBaseType_t ;
typedef int List_t ;


 size_t configMAX_CO_ROUTINE_PRIORITIES ;
 int * pxDelayedCoRoutineList ;
 int * pxOverflowDelayedCoRoutineList ;
 int * pxReadyCoRoutineLists ;
 int vListInitialise (int *) ;
 int xDelayedCoRoutineList1 ;
 int xDelayedCoRoutineList2 ;
 int xPendingReadyCoRoutineList ;

__attribute__((used)) static void prvInitialiseCoRoutineLists( void )
{
UBaseType_t uxPriority;

 for( uxPriority = 0; uxPriority < configMAX_CO_ROUTINE_PRIORITIES; uxPriority++ )
 {
  vListInitialise( ( List_t * ) &( pxReadyCoRoutineLists[ uxPriority ] ) );
 }

 vListInitialise( ( List_t * ) &xDelayedCoRoutineList1 );
 vListInitialise( ( List_t * ) &xDelayedCoRoutineList2 );
 vListInitialise( ( List_t * ) &xPendingReadyCoRoutineList );



 pxDelayedCoRoutineList = &xDelayedCoRoutineList1;
 pxOverflowDelayedCoRoutineList = &xDelayedCoRoutineList2;
}

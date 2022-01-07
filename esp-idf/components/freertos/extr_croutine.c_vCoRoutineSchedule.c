
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uxIndex; int (* pxCoRoutineFunction ) (TYPE_1__*,int ) ;} ;


 int listGET_OWNER_OF_NEXT_ENTRY (TYPE_1__*,int *) ;
 scalar_t__ listLIST_IS_EMPTY (int *) ;
 int prvCheckDelayedList () ;
 int prvCheckPendingReadyList () ;
 TYPE_1__* pxCurrentCoRoutine ;
 int * pxReadyCoRoutineLists ;
 int stub1 (TYPE_1__*,int ) ;
 size_t uxTopCoRoutineReadyPriority ;

void vCoRoutineSchedule( void )
{

 prvCheckPendingReadyList();


 prvCheckDelayedList();


 while( listLIST_IS_EMPTY( &( pxReadyCoRoutineLists[ uxTopCoRoutineReadyPriority ] ) ) )
 {
  if( uxTopCoRoutineReadyPriority == 0 )
  {

   return;
  }
  --uxTopCoRoutineReadyPriority;
 }



 listGET_OWNER_OF_NEXT_ENTRY( pxCurrentCoRoutine, &( pxReadyCoRoutineLists[ uxTopCoRoutineReadyPriority ] ) );


 ( pxCurrentCoRoutine->pxCoRoutineFunction )( pxCurrentCoRoutine, pxCurrentCoRoutine->uxIndex );

 return;
}

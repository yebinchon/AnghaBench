
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ TickType_t ;
struct TYPE_2__ {int xEventListItem; int xGenericListItem; } ;
typedef int List_t ;
typedef int ListItem_t ;


 int listSET_LIST_ITEM_VALUE (int *,scalar_t__) ;
 TYPE_1__* pxCurrentCoRoutine ;
 scalar_t__ pxDelayedCoRoutineList ;
 scalar_t__ pxOverflowDelayedCoRoutineList ;
 int uxListRemove (int *) ;
 int vListInsert (int *,int *) ;
 scalar_t__ xCoRoutineTickCount ;

void vCoRoutineAddToDelayedList( TickType_t xTicksToDelay, List_t *pxEventList )
{
TickType_t xTimeToWake;



 xTimeToWake = xCoRoutineTickCount + xTicksToDelay;




 ( void ) uxListRemove( ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );


 listSET_LIST_ITEM_VALUE( &( pxCurrentCoRoutine->xGenericListItem ), xTimeToWake );

 if( xTimeToWake < xCoRoutineTickCount )
 {


  vListInsert( ( List_t * ) pxOverflowDelayedCoRoutineList, ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );
 }
 else
 {


  vListInsert( ( List_t * ) pxDelayedCoRoutineList, ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );
 }

 if( pxEventList )
 {


  vListInsert( pxEventList, &( pxCurrentCoRoutine->xEventListItem ) );
 }
}

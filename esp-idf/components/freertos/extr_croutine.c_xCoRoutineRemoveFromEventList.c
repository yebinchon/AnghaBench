
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uxPriority; } ;
struct TYPE_3__ {scalar_t__ uxPriority; int xEventListItem; } ;
typedef int List_t ;
typedef TYPE_1__ CRCB_t ;
typedef int BaseType_t ;


 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int const*) ;
 int pdFALSE ;
 int pdTRUE ;
 TYPE_2__* pxCurrentCoRoutine ;
 int uxListRemove (int *) ;
 int vListInsertEnd (int *,int *) ;
 int xPendingReadyCoRoutineList ;

BaseType_t xCoRoutineRemoveFromEventList( const List_t *pxEventList )
{
CRCB_t *pxUnblockedCRCB;
BaseType_t xReturn;




 pxUnblockedCRCB = ( CRCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxEventList );
 ( void ) uxListRemove( &( pxUnblockedCRCB->xEventListItem ) );
 vListInsertEnd( ( List_t * ) &( xPendingReadyCoRoutineList ), &( pxUnblockedCRCB->xEventListItem ) );

 if( pxUnblockedCRCB->uxPriority >= pxCurrentCoRoutine->uxPriority )
 {
  xReturn = pdTRUE;
 }
 else
 {
  xReturn = pdFALSE;
 }

 return xReturn;
}

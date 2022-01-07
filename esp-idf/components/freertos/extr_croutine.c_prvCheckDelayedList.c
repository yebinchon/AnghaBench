
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pvContainer; } ;
struct TYPE_5__ {TYPE_2__ xEventListItem; TYPE_2__ xGenericListItem; } ;
typedef int List_t ;
typedef TYPE_1__ CRCB_t ;


 scalar_t__ listGET_LIST_ITEM_VALUE (TYPE_2__*) ;
 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int *) ;
 scalar_t__ listLIST_IS_EMPTY (int *) ;
 scalar_t__ pdFALSE ;
 int portDISABLE_INTERRUPTS () ;
 int portENABLE_INTERRUPTS () ;
 int prvAddCoRoutineToReadyQueue (TYPE_1__*) ;
 int * pxDelayedCoRoutineList ;
 int * pxOverflowDelayedCoRoutineList ;
 int uxListRemove (TYPE_2__*) ;
 scalar_t__ xCoRoutineTickCount ;
 scalar_t__ xLastTickCount ;
 scalar_t__ xPassedTicks ;
 scalar_t__ xTaskGetTickCount () ;

__attribute__((used)) static void prvCheckDelayedList( void )
{
CRCB_t *pxCRCB;

 xPassedTicks = xTaskGetTickCount() - xLastTickCount;
 while( xPassedTicks )
 {
  xCoRoutineTickCount++;
  xPassedTicks--;


  if( xCoRoutineTickCount == 0 )
  {
   List_t * pxTemp;



   pxTemp = pxDelayedCoRoutineList;
   pxDelayedCoRoutineList = pxOverflowDelayedCoRoutineList;
   pxOverflowDelayedCoRoutineList = pxTemp;
  }


  while( listLIST_IS_EMPTY( pxDelayedCoRoutineList ) == pdFALSE )
  {
   pxCRCB = ( CRCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedCoRoutineList );

   if( xCoRoutineTickCount < listGET_LIST_ITEM_VALUE( &( pxCRCB->xGenericListItem ) ) )
   {

    break;
   }

   portDISABLE_INTERRUPTS();
   {





    ( void ) uxListRemove( &( pxCRCB->xGenericListItem ) );


    if( pxCRCB->xEventListItem.pvContainer )
    {
     ( void ) uxListRemove( &( pxCRCB->xEventListItem ) );
    }
   }
   portENABLE_INTERRUPTS();

   prvAddCoRoutineToReadyQueue( pxCRCB );
  }
 }

 xLastTickCount = xCoRoutineTickCount;
}

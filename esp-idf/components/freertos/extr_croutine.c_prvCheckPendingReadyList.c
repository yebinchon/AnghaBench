
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xGenericListItem; int xEventListItem; } ;
typedef TYPE_1__ CRCB_t ;


 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int *) ;
 scalar_t__ listLIST_IS_EMPTY (int *) ;
 scalar_t__ pdFALSE ;
 int portDISABLE_INTERRUPTS () ;
 int portENABLE_INTERRUPTS () ;
 int prvAddCoRoutineToReadyQueue (TYPE_1__*) ;
 int uxListRemove (int *) ;
 int xPendingReadyCoRoutineList ;

__attribute__((used)) static void prvCheckPendingReadyList( void )
{



 while( listLIST_IS_EMPTY( &xPendingReadyCoRoutineList ) == pdFALSE )
 {
  CRCB_t *pxUnblockedCRCB;


  portDISABLE_INTERRUPTS();
  {
   pxUnblockedCRCB = ( CRCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( (&xPendingReadyCoRoutineList) );
   ( void ) uxListRemove( &( pxUnblockedCRCB->xEventListItem ) );
  }
  portENABLE_INTERRUPTS();

  ( void ) uxListRemove( &( pxUnblockedCRCB->xGenericListItem ) );
  prvAddCoRoutineToReadyQueue( pxUnblockedCRCB );
 }
}

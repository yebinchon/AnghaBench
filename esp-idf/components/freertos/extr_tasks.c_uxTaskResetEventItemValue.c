
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ TickType_t ;
struct TYPE_2__ {scalar_t__ uxPriority; int xEventListItem; } ;


 scalar_t__ configMAX_PRIORITIES ;
 scalar_t__ listGET_LIST_ITEM_VALUE (int *) ;
 int listSET_LIST_ITEM_VALUE (int *,scalar_t__) ;
 TYPE_1__** pxCurrentTCB ;
 int taskENTER_CRITICAL (int *) ;
 int taskEXIT_CRITICAL (int *) ;
 size_t xPortGetCoreID () ;
 int xTaskQueueMutex ;

TickType_t uxTaskResetEventItemValue( void )
{
TickType_t uxReturn;
 taskENTER_CRITICAL(&xTaskQueueMutex);
 uxReturn = listGET_LIST_ITEM_VALUE( &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) );



 listSET_LIST_ITEM_VALUE( &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ), ( ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB[ xPortGetCoreID() ]->uxPriority ) );
 taskEXIT_CRITICAL(&xTaskQueueMutex);

 return uxReturn;
}

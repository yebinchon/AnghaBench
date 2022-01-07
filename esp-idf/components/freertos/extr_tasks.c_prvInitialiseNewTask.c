
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint32_t ;
typedef unsigned long portPOINTER_SIZE_TYPE ;
typedef unsigned int UBaseType_t ;
typedef scalar_t__ TickType_t ;
typedef scalar_t__ TaskHandle_t ;
typedef int TaskFunction_t ;
struct TYPE_4__ {char* pcTaskName; unsigned int uxPriority; unsigned int uxBasePriority; unsigned int uxCriticalNesting; unsigned long ulRunTimeCounter; void* pxTopOfStack; void* ucDelayAborted; int xNewLib_reent; int eNotifyState; scalar_t__ ulNotifiedValue; int ** pvThreadLocalStoragePointersDelCallback; int ** pvThreadLocalStoragePointers; int * pxStack; int xMPUSettings; int * pxTaskTag; int xEventListItem; int xGenericListItem; scalar_t__ uxMutexesHeld; void* xCoreID; int * pxEndOfStack; } ;
typedef TYPE_1__ TCB_t ;
typedef int StackType_t ;
typedef int MemoryRegion_t ;
typedef void* BaseType_t ;


 int configASSERT (int) ;
 scalar_t__ configMAX_PRIORITIES ;
 int configMAX_TASK_NAME_LEN ;
 scalar_t__ configNUM_THREAD_LOCAL_STORAGE_POINTERS ;
 int eNotWaitingNotification ;
 int esp_reent_init (int *) ;
 int listSET_LIST_ITEM_OWNER (int *,TYPE_1__*) ;
 int listSET_LIST_ITEM_VALUE (int *,scalar_t__) ;
 int memset (int *,int,size_t) ;
 int mtCOVERAGE_TEST_MARKER () ;
 void* pdFALSE ;
 void* pdTRUE ;
 scalar_t__ portBYTE_ALIGNMENT_MASK ;
 unsigned int portPRIVILEGE_BIT ;
 void* pxPortInitialiseStack (int *,int ,void* const,...) ;
 scalar_t__ tskSTACK_FILL_BYTE ;
 int vListInitialiseItem (int *) ;
 int vPortStoreTaskMPUSettings (int *,int const* const,int *,int const) ;

__attribute__((used)) static void prvInitialiseNewTask( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         TaskHandle_t * const pxCreatedTask,
         TCB_t *pxNewTCB,
         const MemoryRegion_t * const xRegions, const BaseType_t xCoreID )
{
StackType_t *pxTopOfStack;
UBaseType_t x;
 {
  pxTopOfStack = pxNewTCB->pxStack;


  configASSERT( ( ( ( portPOINTER_SIZE_TYPE ) pxNewTCB->pxStack & ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) == 0UL ) );



  pxNewTCB->pxEndOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
 }



 for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 {
  pxNewTCB->pcTaskName[ x ] = pcName[ x ];




  if( pcName[ x ] == 0x00 )
  {
   break;
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
 }



 pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';



 if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
 {
  uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }

 pxNewTCB->uxPriority = uxPriority;
 pxNewTCB->xCoreID = xCoreID;







 vListInitialiseItem( &( pxNewTCB->xGenericListItem ) );
 vListInitialiseItem( &( pxNewTCB->xEventListItem ) );



 listSET_LIST_ITEM_OWNER( &( pxNewTCB->xGenericListItem ), pxNewTCB );


 listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority );
 listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
 {

  ( void ) xRegions;
 }
 {
  pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
 }


 if( ( void * ) pxCreatedTask != ((void*)0) )
 {


  *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }
}

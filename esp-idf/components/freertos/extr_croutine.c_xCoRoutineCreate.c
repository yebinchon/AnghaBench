
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int crCOROUTINE_CODE ;
typedef scalar_t__ UBaseType_t ;
typedef scalar_t__ TickType_t ;
struct TYPE_5__ {int xEventListItem; int xGenericListItem; int pxCoRoutineFunction; scalar_t__ uxIndex; scalar_t__ uxPriority; int uxState; } ;
typedef TYPE_1__ CRCB_t ;
typedef int BaseType_t ;


 int UNTESTED_FUNCTION () ;
 scalar_t__ configMAX_CO_ROUTINE_PRIORITIES ;
 int corINITIAL_STATE ;
 int errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ;
 int listSET_LIST_ITEM_OWNER (int *,TYPE_1__*) ;
 int listSET_LIST_ITEM_VALUE (int *,scalar_t__) ;
 int pdPASS ;
 int prvAddCoRoutineToReadyQueue (TYPE_1__*) ;
 int prvInitialiseCoRoutineLists () ;
 scalar_t__ pvPortMalloc (int) ;
 TYPE_1__* pxCurrentCoRoutine ;
 int vListInitialiseItem (int *) ;

BaseType_t xCoRoutineCreate( crCOROUTINE_CODE pxCoRoutineCode, UBaseType_t uxPriority, UBaseType_t uxIndex )
{
BaseType_t xReturn;
CRCB_t *pxCoRoutine;

 UNTESTED_FUNCTION();

 pxCoRoutine = ( CRCB_t * ) pvPortMalloc( sizeof( CRCB_t ) );
 if( pxCoRoutine )
 {


  if( pxCurrentCoRoutine == ((void*)0) )
  {
   pxCurrentCoRoutine = pxCoRoutine;
   prvInitialiseCoRoutineLists();
  }


  if( uxPriority >= configMAX_CO_ROUTINE_PRIORITIES )
  {
   uxPriority = configMAX_CO_ROUTINE_PRIORITIES - 1;
  }


  pxCoRoutine->uxState = corINITIAL_STATE;
  pxCoRoutine->uxPriority = uxPriority;
  pxCoRoutine->uxIndex = uxIndex;
  pxCoRoutine->pxCoRoutineFunction = pxCoRoutineCode;


  vListInitialiseItem( &( pxCoRoutine->xGenericListItem ) );
  vListInitialiseItem( &( pxCoRoutine->xEventListItem ) );




  listSET_LIST_ITEM_OWNER( &( pxCoRoutine->xGenericListItem ), pxCoRoutine );
  listSET_LIST_ITEM_OWNER( &( pxCoRoutine->xEventListItem ), pxCoRoutine );


  listSET_LIST_ITEM_VALUE( &( pxCoRoutine->xEventListItem ), ( ( TickType_t ) configMAX_CO_ROUTINE_PRIORITIES - ( TickType_t ) uxPriority ) );



  prvAddCoRoutineToReadyQueue( pxCoRoutine );

  xReturn = pdPASS;
 }
 else
 {
  xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
 }

 return xReturn;
}

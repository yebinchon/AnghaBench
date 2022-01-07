
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_3__ {scalar_t__ uxMessagesWaiting; } ;
typedef TYPE_1__ Queue_t ;
typedef int BaseType_t ;


 int pdFALSE ;
 int pdTRUE ;

__attribute__((used)) static BaseType_t prvIsQueueEmpty( Queue_t *pxQueue )
{
BaseType_t xReturn;


 {
  if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
  {
   xReturn = pdTRUE;
  }
  else
  {
   xReturn = pdFALSE;
  }
 }

 return xReturn;
}

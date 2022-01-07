
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const EventBits_t ;
typedef scalar_t__ BaseType_t ;


 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ const pdFALSE ;
 scalar_t__ pdTRUE ;

__attribute__((used)) static BaseType_t prvTestWaitCondition( const EventBits_t uxCurrentEventBits, const EventBits_t uxBitsToWaitFor, const BaseType_t xWaitForAllBits )
{
BaseType_t xWaitConditionMet = pdFALSE;

 if( xWaitForAllBits == pdFALSE )
 {


  if( ( uxCurrentEventBits & uxBitsToWaitFor ) != ( EventBits_t ) 0 )
  {
   xWaitConditionMet = pdTRUE;
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
 }
 else
 {


  if( ( uxCurrentEventBits & uxBitsToWaitFor ) == uxBitsToWaitFor )
  {
   xWaitConditionMet = pdTRUE;
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
 }

 return xWaitConditionMet;
}

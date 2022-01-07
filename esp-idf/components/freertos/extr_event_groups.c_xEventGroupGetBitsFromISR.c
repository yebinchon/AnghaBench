
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBaseType_t ;
struct TYPE_2__ {int uxEventBits; } ;
typedef TYPE_1__ EventGroup_t ;
typedef scalar_t__ EventGroupHandle_t ;
typedef int EventBits_t ;


 int portCLEAR_INTERRUPT_MASK_FROM_ISR (int ) ;
 int portSET_INTERRUPT_MASK_FROM_ISR () ;

EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup )
{
UBaseType_t uxSavedInterruptStatus;
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
EventBits_t uxReturn;

 uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
 {
  uxReturn = pxEventBits->uxEventBits;
 }
 portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );

 return uxReturn;
}

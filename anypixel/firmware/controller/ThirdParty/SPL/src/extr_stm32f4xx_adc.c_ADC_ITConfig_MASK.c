#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int CR1; } ;
typedef  scalar_t__ FunctionalState ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState)  
{
  uint32_t itmask = 0;
  /* Check the parameters */
  FUNC3(FUNC0(ADCx));
  FUNC3(FUNC2(NewState));
  FUNC3(FUNC1(ADC_IT)); 

  /* Get the ADC IT index */
  itmask = (uint8_t)ADC_IT;
  itmask = (uint32_t)0x01 << itmask;    

  if (NewState != DISABLE)
  {
    /* Enable the selected ADC interrupts */
    ADCx->CR1 |= itmask;
  }
  else
  {
    /* Disable the selected ADC interrupts */
    ADCx->CR1 &= (~(uint32_t)itmask);
  }
}
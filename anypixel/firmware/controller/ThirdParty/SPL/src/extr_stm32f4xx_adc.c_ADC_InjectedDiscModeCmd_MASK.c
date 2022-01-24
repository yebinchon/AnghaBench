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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  CR1; } ;
typedef  scalar_t__ FunctionalState ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 scalar_t__ ADC_CR1_JDISCEN ; 
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(ADC_TypeDef* ADCx, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC2(FUNC0(ADCx));
  FUNC2(FUNC1(NewState));
  if (NewState != DISABLE)
  {
    /* Enable the selected ADC injected discontinuous mode */
    ADCx->CR1 |= (uint32_t)ADC_CR1_JDISCEN;
  }
  else
  {
    /* Disable the selected ADC injected discontinuous mode */
    ADCx->CR1 &= (uint32_t)(~ADC_CR1_JDISCEN);
  }
}
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
struct TYPE_4__ {int /*<<< orphan*/  CR2; } ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 scalar_t__ ADC_CR2_JSWSTART ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(ADC_TypeDef* ADCx)
{
  /* Check the parameters */
  FUNC1(FUNC0(ADCx));
  /* Enable the selected ADC conversion for injected group */
  ADCx->CR2 |= (uint32_t)ADC_CR2_JSWSTART;
}
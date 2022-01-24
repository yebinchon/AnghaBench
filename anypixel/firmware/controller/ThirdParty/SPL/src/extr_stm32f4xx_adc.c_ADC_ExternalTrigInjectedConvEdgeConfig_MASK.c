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
 int /*<<< orphan*/  CR2_JEXTEN_RESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConvEdge)
{
  uint32_t tmpreg = 0;
  /* Check the parameters */
  FUNC2(FUNC0(ADCx));
  FUNC2(FUNC1(ADC_ExternalTrigInjecConvEdge));
  /* Get the old register value */
  tmpreg = ADCx->CR2;
  /* Clear the old external trigger edge for injected group */
  tmpreg &= CR2_JEXTEN_RESET;
  /* Set the new external trigger edge for injected group */
  tmpreg |= ADC_ExternalTrigInjecConvEdge;
  /* Store the new register value */
  ADCx->CR2 = tmpreg;
}
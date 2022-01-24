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
typedef  void* uint16_t ;
struct TYPE_4__ {void* LTR; void* HTR; } ;
typedef  TYPE_1__ ADC_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(ADC_TypeDef* ADCx, uint16_t HighThreshold,
                                        uint16_t LowThreshold)
{
  /* Check the parameters */
  FUNC2(FUNC0(ADCx));
  FUNC2(FUNC1(HighThreshold));
  FUNC2(FUNC1(LowThreshold));
  
  /* Set the ADCx high threshold */
  ADCx->HTR = HighThreshold;
  
  /* Set the ADCx low threshold */
  ADCx->LTR = LowThreshold;
}
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
struct TYPE_4__ {void* EGR; void* PSC; } ;
typedef  TYPE_1__ TIM_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode)
{
  /* Check the parameters */
  FUNC2(FUNC0(TIMx));
  FUNC2(FUNC1(TIM_PSCReloadMode));
  
  /* Set the Prescaler value */
  TIMx->PSC = Prescaler;
  /* Set or reset the UG Bit */
  TIMx->EGR = TIM_PSCReloadMode;
}
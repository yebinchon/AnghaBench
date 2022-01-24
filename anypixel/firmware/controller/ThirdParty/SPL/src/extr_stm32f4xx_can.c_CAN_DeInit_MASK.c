#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  CAN_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/ * CAN1 ; 
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB1Periph_CAN1 ; 
 int /*<<< orphan*/  RCC_APB1Periph_CAN2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(CAN_TypeDef* CANx)
{
  /* Check the parameters */
  FUNC2(FUNC0(CANx));
 
  if (CANx == CAN1)
  {
    /* Enable CAN1 reset state */
    FUNC1(RCC_APB1Periph_CAN1, ENABLE);
    /* Release CAN1 from reset state */
    FUNC1(RCC_APB1Periph_CAN1, DISABLE);
  }
  else
  {  
    /* Enable CAN2 reset state */
    FUNC1(RCC_APB1Periph_CAN2, ENABLE);
    /* Release CAN2 from reset state */
    FUNC1(RCC_APB1Periph_CAN2, DISABLE);
  }
}
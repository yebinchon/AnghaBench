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
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR1; } ;
typedef  TYPE_1__ I2C_TypeDef ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 scalar_t__ I2C_CR1_ENPEC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(I2C_TypeDef* I2Cx, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC2(FUNC1(I2Cx));
  FUNC2(FUNC0(NewState));
  if (NewState != DISABLE)
  {
    /* Enable the selected I2C PEC calculation */
    I2Cx->CR1 |= I2C_CR1_ENPEC;
  }
  else
  {
    /* Disable the selected I2C PEC calculation */
    I2Cx->CR1 &= (uint16_t)~((uint16_t)I2C_CR1_ENPEC);
  }
}
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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR1; } ;
typedef  TYPE_1__ I2C_TypeDef ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(I2C_TypeDef* I2Cx, uint32_t I2C_DMAReq, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC3(FUNC1(I2Cx));
  FUNC3(FUNC0(NewState));
  FUNC3(FUNC2(I2C_DMAReq));

  if (NewState != DISABLE)
  {
    /* Enable the selected I2C DMA requests */
    I2Cx->CR1 |= I2C_DMAReq;
  }
  else
  {
    /* Disable the selected I2C DMA requests */
    I2Cx->CR1 &= (uint32_t)~I2C_DMAReq;
  }
}
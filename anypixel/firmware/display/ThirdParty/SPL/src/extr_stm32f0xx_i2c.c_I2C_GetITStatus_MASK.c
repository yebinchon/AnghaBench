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
typedef  int uint32_t ;
struct TYPE_4__ {int ISR; int /*<<< orphan*/  CR1; } ;
typedef  int ITStatus ;
typedef  TYPE_1__ I2C_TypeDef ;
typedef  scalar_t__ I2C_IT ;
typedef  scalar_t__ I2C_CR1_TCIE ;
typedef  scalar_t__ I2C_CR1_ERRIE ;

/* Variables and functions */
 int ERROR_IT_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RESET ; 
 int SET ; 
 int TC_IT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ITStatus FUNC3(I2C_TypeDef* I2Cx, uint32_t I2C_IT)
{
  uint32_t tmpreg = 0;
  ITStatus bitstatus = RESET;
  uint32_t enablestatus = 0;

  /* Check the parameters */
  FUNC2(FUNC0(I2Cx));
  FUNC2(FUNC1(I2C_IT));

  /* Check if the interrupt source is enabled or not */
  /* If Error interrupt */
  if ((uint32_t)(I2C_IT & ERROR_IT_MASK))
  {
    enablestatus = (uint32_t)((I2C_CR1_ERRIE) & (I2Cx->CR1));
  }
  /* If TC interrupt */
  else if ((uint32_t)(I2C_IT & TC_IT_MASK))
  {
    enablestatus = (uint32_t)((I2C_CR1_TCIE) & (I2Cx->CR1));
  }
  else
  {
    enablestatus = (uint32_t)((I2C_IT) & (I2Cx->CR1));
  }
  
  /* Get the ISR register value */
  tmpreg = I2Cx->ISR;

  /* Get flag status */
  tmpreg &= I2C_IT;

  /* Check the status of the specified I2C flag */
  if((tmpreg != RESET) && enablestatus)
  {
    /* I2C_IT is set */
    bitstatus = SET;
  }
  else
  {
    /* I2C_IT is reset */
    bitstatus = RESET;
  }

  /* Return the I2C_IT status */
  return bitstatus;
}
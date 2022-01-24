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
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int TIMEOUTR; } ;
typedef  TYPE_1__ I2C_TypeDef ;

/* Variables and functions */
 int I2C_TIMEOUTR_TIMEOUTB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(I2C_TypeDef* I2Cx, uint16_t Timeout)
{
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC2(FUNC0(I2Cx));
  FUNC2(FUNC1(Timeout));

  /* Get the old register value */
  tmpreg = I2Cx->TIMEOUTR;

  /* Reset I2Cx TIMEOUTB bit [11:0] */
  tmpreg &= (uint32_t)~((uint32_t)I2C_TIMEOUTR_TIMEOUTB);

  /* Set I2Cx TIMEOUTB */
  tmpreg |= (uint32_t)(((uint32_t)Timeout << 16) & I2C_TIMEOUTR_TIMEOUTB) ;

  /* Store the new register value */
  I2Cx->TIMEOUTR = tmpreg;
}
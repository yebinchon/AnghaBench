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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int CR2; } ;
typedef  TYPE_1__ I2C_TypeDef ;

/* Variables and functions */
 int I2C_CR2_NBYTES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(I2C_TypeDef* I2Cx, uint8_t Number_Bytes)
{
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC1(FUNC0(I2Cx));

  /* Get the old register value */
  tmpreg = I2Cx->CR2;

  /* Reset I2Cx Nbytes bit [7:0] */
  tmpreg &= (uint32_t)~((uint32_t)I2C_CR2_NBYTES);

  /* Set I2Cx Nbytes */
  tmpreg |= (uint32_t)(((uint32_t)Number_Bytes << 16 ) & I2C_CR2_NBYTES);

  /* Store the new register value */
  I2Cx->CR2 = tmpreg;
}
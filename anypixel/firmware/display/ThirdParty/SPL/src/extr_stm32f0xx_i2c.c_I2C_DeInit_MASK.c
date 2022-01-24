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
typedef  int /*<<< orphan*/  I2C_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/ * I2C1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB1Periph_I2C1 ; 
 int /*<<< orphan*/  RCC_APB1Periph_I2C2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(I2C_TypeDef* I2Cx)
{
  /* Check the parameters */
  FUNC2(FUNC0(I2Cx));

  if (I2Cx == I2C1)
  {
    /* Enable I2C1 reset state */
    FUNC1(RCC_APB1Periph_I2C1, ENABLE);
    /* Release I2C1 from reset state */
    FUNC1(RCC_APB1Periph_I2C1, DISABLE);
  }
  else
  {
    /* Enable I2C2 reset state */
    FUNC1(RCC_APB1Periph_I2C2, ENABLE);
    /* Release I2C2 from reset state */
    FUNC1(RCC_APB1Periph_I2C2, DISABLE);
  }
}
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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  CR1; } ;
typedef  TYPE_1__ I2C_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_SMBusAlert_High ; 
 int /*<<< orphan*/  I2C_SMBusAlert_Low ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(I2C_TypeDef* I2Cx, uint16_t I2C_SMBusAlert)
{
  /* Check the parameters */
  FUNC2(FUNC0(I2Cx));
  FUNC2(FUNC1(I2C_SMBusAlert));
  if (I2C_SMBusAlert == I2C_SMBusAlert_Low)
  {
    /* Drive the SMBusAlert pin Low */
    I2Cx->CR1 |= I2C_SMBusAlert_Low;
  }
  else
  {
    /* Drive the SMBusAlert pin High  */
    I2Cx->CR1 &= I2C_SMBusAlert_High;
  }
}
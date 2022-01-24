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
struct TYPE_4__ {scalar_t__ SR1; } ;
typedef  TYPE_1__ I2C_TypeDef ;

/* Variables and functions */
 int FLAG_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG)
{
  uint32_t flagpos = 0;
  /* Check the parameters */
  FUNC2(FUNC0(I2Cx));
  FUNC2(FUNC1(I2C_FLAG));
  /* Get the I2C flag position */
  flagpos = I2C_FLAG & FLAG_MASK;
  /* Clear the selected I2C flag */
  I2Cx->SR1 = (uint16_t)~flagpos;
}
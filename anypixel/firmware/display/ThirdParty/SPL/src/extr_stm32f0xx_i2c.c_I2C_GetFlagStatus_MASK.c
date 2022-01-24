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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  ISR; } ;
typedef  TYPE_1__ I2C_TypeDef ;
typedef  int /*<<< orphan*/  FlagStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

FlagStatus FUNC3(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG)
{
  uint32_t tmpreg = 0;
  FlagStatus bitstatus = RESET;
  
  /* Check the parameters */
  FUNC2(FUNC0(I2Cx));
  FUNC2(FUNC1(I2C_FLAG));
  
  /* Get the ISR register value */
  tmpreg = I2Cx->ISR;
  
  /* Get flag status */
  tmpreg &= I2C_FLAG;
  
  if(tmpreg != 0)
  {
    /* I2C_FLAG is set */
    bitstatus = SET;
  }
  else
  {
    /* I2C_FLAG is reset */
    bitstatus = RESET;
  }
  return bitstatus;
}
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
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int CR2; } ;
typedef  TYPE_1__ I2C_TypeDef ;

/* Variables and functions */
 int I2C_CR2_AUTOEND ; 
 int I2C_CR2_NBYTES ; 
 int I2C_CR2_RD_WRN ; 
 int I2C_CR2_RELOAD ; 
 int I2C_CR2_SADD ; 
 int I2C_CR2_START ; 
 int I2C_CR2_STOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(I2C_TypeDef* I2Cx, uint16_t Address, uint8_t Number_Bytes, uint32_t ReloadEndMode, uint32_t StartStopMode)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC4(FUNC0(I2Cx));
  FUNC4(FUNC1(Address));  
  FUNC4(FUNC2(ReloadEndMode));
  FUNC4(FUNC3(StartStopMode));
    
  /* Get the CR2 register value */
  tmpreg = I2Cx->CR2;
  
  /* clear tmpreg specific bits */
  tmpreg &= (uint32_t)~((uint32_t)(I2C_CR2_SADD | I2C_CR2_NBYTES | I2C_CR2_RELOAD | I2C_CR2_AUTOEND | I2C_CR2_RD_WRN | I2C_CR2_START | I2C_CR2_STOP));
  
  /* update tmpreg */
  tmpreg |= (uint32_t)(((uint32_t)Address & I2C_CR2_SADD) | (((uint32_t)Number_Bytes << 16 ) & I2C_CR2_NBYTES) | \
            (uint32_t)ReloadEndMode | (uint32_t)StartStopMode);
  
  /* update CR2 register */
  I2Cx->CR2 = tmpreg;  
}
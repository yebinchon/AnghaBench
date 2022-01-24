#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int CR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* RCC ; 
 int RCC_CR_HSITRIM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint8_t HSICalibrationValue)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC1(FUNC0(HSICalibrationValue));
  
  tmpreg = RCC->CR;
  
  /* Clear HSITRIM[4:0] bits */
  tmpreg &= ~RCC_CR_HSITRIM;
  
  /* Set the HSITRIM[4:0] bits according to HSICalibrationValue value */
  tmpreg |= (uint32_t)HSICalibrationValue << 3;

  /* Store the new value */
  RCC->CR = tmpreg;
}
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
typedef  int /*<<< orphan*/  GPIO_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/ * GPIOA ; 
 int /*<<< orphan*/ * GPIOB ; 
 int /*<<< orphan*/ * GPIOC ; 
 int /*<<< orphan*/ * GPIOD ; 
 int /*<<< orphan*/ * GPIOE ; 
 int /*<<< orphan*/ * GPIOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_AHBPeriph_GPIOA ; 
 int /*<<< orphan*/  RCC_AHBPeriph_GPIOB ; 
 int /*<<< orphan*/  RCC_AHBPeriph_GPIOC ; 
 int /*<<< orphan*/  RCC_AHBPeriph_GPIOD ; 
 int /*<<< orphan*/  RCC_AHBPeriph_GPIOE ; 
 int /*<<< orphan*/  RCC_AHBPeriph_GPIOF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(GPIO_TypeDef* GPIOx)
{
  /* Check the parameters */
  FUNC2(FUNC0(GPIOx));

  if(GPIOx == GPIOA)
  {
    FUNC1(RCC_AHBPeriph_GPIOA, ENABLE);
    FUNC1(RCC_AHBPeriph_GPIOA, DISABLE);
  }
  else if(GPIOx == GPIOB)
  {
    FUNC1(RCC_AHBPeriph_GPIOB, ENABLE);
    FUNC1(RCC_AHBPeriph_GPIOB, DISABLE);
  }
  else if(GPIOx == GPIOC)
  {
    FUNC1(RCC_AHBPeriph_GPIOC, ENABLE);
    FUNC1(RCC_AHBPeriph_GPIOC, DISABLE);
  }
  else if(GPIOx == GPIOD)
  {
    FUNC1(RCC_AHBPeriph_GPIOD, ENABLE);
    FUNC1(RCC_AHBPeriph_GPIOD, DISABLE);
  }
  else if(GPIOx == GPIOE)
  {
    FUNC1(RCC_AHBPeriph_GPIOE, ENABLE);
    FUNC1(RCC_AHBPeriph_GPIOE, DISABLE);
  }
  else
  {
    if(GPIOx == GPIOF)
    {
      FUNC1(RCC_AHBPeriph_GPIOF, ENABLE);
      FUNC1(RCC_AHBPeriph_GPIOF, DISABLE);
    }
  }
}
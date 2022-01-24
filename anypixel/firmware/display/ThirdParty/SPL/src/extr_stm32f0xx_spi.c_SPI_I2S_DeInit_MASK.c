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
typedef  int /*<<< orphan*/  SPI_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB1Periph_SPI2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB2Periph_SPI1 ; 
 int /*<<< orphan*/ * SPI1 ; 
 int /*<<< orphan*/ * SPI2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(SPI_TypeDef* SPIx)
{
  /* Check the parameters */
  FUNC3(FUNC0(SPIx));

  if (SPIx == SPI1)
  {
    /* Enable SPI1 reset state */
    FUNC2(RCC_APB2Periph_SPI1, ENABLE);
    /* Release SPI1 from reset state */
    FUNC2(RCC_APB2Periph_SPI1, DISABLE);
  }
  else
  {
    if (SPIx == SPI2)
    {
      /* Enable SPI2 reset state */
      FUNC1(RCC_APB1Periph_SPI2, ENABLE);
      /* Release SPI2 from reset state */
      FUNC1(RCC_APB1Periph_SPI2, DISABLE);
    }
  }
}
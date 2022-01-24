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
struct TYPE_4__ {int /*<<< orphan*/  CR2; } ;
typedef  TYPE_1__ SPI_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPI_CR2_DS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(SPI_TypeDef* SPIx, uint16_t SPI_DataSize)
{
  uint16_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC2(FUNC0(SPIx));
  FUNC2(FUNC1(SPI_DataSize));
  /* Read the CR2 register */
  tmpreg = SPIx->CR2;
  /* Clear DS[3:0] bits */
  tmpreg &= (uint16_t)~SPI_CR2_DS;
  /* Set new DS[3:0] bits value */
  tmpreg |= SPI_DataSize;
  SPIx->CR2 = tmpreg;
}
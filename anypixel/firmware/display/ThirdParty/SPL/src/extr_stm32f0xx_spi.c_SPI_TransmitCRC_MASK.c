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
struct TYPE_4__ {int /*<<< orphan*/  CR1; } ;
typedef  TYPE_1__ SPI_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SPI_CR1_CRCNEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(SPI_TypeDef* SPIx)
{
  /* Check the parameters */
  FUNC1(FUNC0(SPIx));

  /* Enable the selected SPI CRC transmission */
  SPIx->CR1 |= SPI_CR1_CRCNEXT;
}
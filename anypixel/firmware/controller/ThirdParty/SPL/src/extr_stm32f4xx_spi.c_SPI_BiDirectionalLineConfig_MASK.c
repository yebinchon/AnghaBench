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
typedef  TYPE_1__ SPI_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_Direction_Rx ; 
 int /*<<< orphan*/  SPI_Direction_Tx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(SPI_TypeDef* SPIx, uint16_t SPI_Direction)
{
  /* Check the parameters */
  FUNC2(FUNC0(SPIx));
  FUNC2(FUNC1(SPI_Direction));
  if (SPI_Direction == SPI_Direction_Tx)
  {
    /* Set the Tx only mode */
    SPIx->CR1 |= SPI_Direction_Tx;
  }
  else
  {
    /* Set the Rx only mode */
    SPIx->CR1 &= SPI_Direction_Rx;
  }
}
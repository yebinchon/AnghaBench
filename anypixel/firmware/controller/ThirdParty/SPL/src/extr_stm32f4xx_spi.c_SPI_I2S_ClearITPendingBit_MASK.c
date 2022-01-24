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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int SR; } ;
typedef  TYPE_1__ SPI_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT)
{
  uint16_t itpos = 0;
  /* Check the parameters */
  FUNC2(FUNC0(SPIx));
  FUNC2(FUNC1(SPI_I2S_IT));

  /* Get the SPI_I2S IT index */
  itpos = 0x01 << (SPI_I2S_IT & 0x0F);

  /* Clear the selected SPI CRC Error (CRCERR) interrupt pending bit */
  SPIx->SR = (uint16_t)~itpos;
}
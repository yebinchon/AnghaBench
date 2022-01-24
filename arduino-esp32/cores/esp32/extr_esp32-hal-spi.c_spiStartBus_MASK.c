#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {TYPE_2__* dev; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_3__ spi_t ;
struct TYPE_11__ {int usr_mosi; int usr_miso; int doutdin; } ;
struct TYPE_12__ {int* data_buf; TYPE_1__ user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_PERIP_CLK_EN_REG ; 
 int /*<<< orphan*/  DPORT_PERIP_RST_EN_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_SPI_CLK_EN ; 
 int /*<<< orphan*/  DPORT_SPI_CLK_EN_1 ; 
 int /*<<< orphan*/  DPORT_SPI_CLK_EN_2 ; 
 int /*<<< orphan*/  DPORT_SPI_RST ; 
 int /*<<< orphan*/  DPORT_SPI_RST_1 ; 
 int /*<<< orphan*/  DPORT_SPI_RST_2 ; 
 int HSPI ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int VSPI ; 
 int /*<<< orphan*/  _on_apb_change ; 
 TYPE_3__* _spi_bus_array ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 

spi_t * FUNC10(uint8_t spi_num, uint32_t clockDiv, uint8_t dataMode, uint8_t bitOrder)
{
    if(spi_num > 3){
        return NULL;
    }

    spi_t * spi = &_spi_bus_array[spi_num];

#if !CONFIG_DISABLE_HAL_LOCKS
    if(spi->lock == NULL){
        spi->lock = FUNC9();
        if(spi->lock == NULL) {
            return NULL;
        }
    }
#endif

    if(spi_num == HSPI) {
        FUNC1(DPORT_PERIP_CLK_EN_REG, DPORT_SPI_CLK_EN);
        FUNC0(DPORT_PERIP_RST_EN_REG, DPORT_SPI_RST);
    } else if(spi_num == VSPI) {
        FUNC1(DPORT_PERIP_CLK_EN_REG, DPORT_SPI_CLK_EN_2);
        FUNC0(DPORT_PERIP_RST_EN_REG, DPORT_SPI_RST_2);
    } else {
        FUNC1(DPORT_PERIP_CLK_EN_REG, DPORT_SPI_CLK_EN_1);
        FUNC0(DPORT_PERIP_RST_EN_REG, DPORT_SPI_RST_1);
    }

    FUNC8(spi);
    FUNC7(spi, dataMode);
    FUNC5(spi, bitOrder);
    FUNC6(spi, clockDiv);

    FUNC2();
    spi->dev->user.usr_mosi = 1;
    spi->dev->user.usr_miso = 1;
    spi->dev->user.doutdin = 1;

    int i;
    for(i=0; i<16; i++) {
        spi->dev->data_buf[i] = 0x00000000;
    }
    FUNC3();

    FUNC4(spi, _on_apb_change);
    return spi;
}
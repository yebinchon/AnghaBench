#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bitlen; int /*<<< orphan*/ * rx_buffer; int /*<<< orphan*/  hw; int /*<<< orphan*/ * tx_buffer; int /*<<< orphan*/ * dmadesc_tx; int /*<<< orphan*/ * dmadesc_rx; scalar_t__ use_dma; } ;
typedef  TYPE_1__ spi_slave_hal_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC10(const spi_slave_hal_context_t *hal)
{
    FUNC5(hal->hw);
    if (hal->use_dma) {
        FUNC3(hal->hw);

        //Fill DMA descriptors
        if (hal->rx_buffer) {
            FUNC0(hal->dmadesc_rx, hal->rx_buffer, ((hal->bitlen + 7) / 8), true);
            FUNC4(hal->hw, &hal->dmadesc_rx[0]);
        }
        if (hal->tx_buffer) {
            FUNC0(hal->dmadesc_tx, hal->tx_buffer, (hal->bitlen + 7) / 8, false);
            FUNC8(hal->hw, (&hal->dmadesc_tx[0]));
        }
    } else {
        //No DMA. Turn off SPI and copy data to transmit buffers.
        if (hal->tx_buffer) {
            FUNC9(hal->hw, hal->tx_buffer, hal->bitlen);
        }
    }

    FUNC6(hal->hw, hal->bitlen);
    FUNC7(hal->hw, hal->bitlen);
    FUNC2(hal->hw, (hal->tx_buffer == NULL) ? 0 : 1);
    FUNC1(hal->hw, (hal->rx_buffer == NULL) ? 0 : 1);
}
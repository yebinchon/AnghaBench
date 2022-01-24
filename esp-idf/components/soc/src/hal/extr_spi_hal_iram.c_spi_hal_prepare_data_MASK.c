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
struct TYPE_3__ {int rx_bitlen; scalar_t__ rcv_buffer; scalar_t__ send_buffer; int /*<<< orphan*/  half_duplex; int /*<<< orphan*/  dmadesc_tx; int /*<<< orphan*/  tx_bitlen; scalar_t__ dma_enabled; int /*<<< orphan*/  dmadesc_rx; int /*<<< orphan*/ * hw; } ;
typedef  TYPE_1__ spi_hal_context_t ;
typedef  int /*<<< orphan*/  spi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC7(const spi_hal_context_t *hal)
{
    spi_dev_t *hw = hal->hw;
    FUNC3(hw);
    //Fill DMA descriptors
    if (hal->rcv_buffer) {
        if (!hal->dma_enabled) {
            //No need to setup anything; we'll copy the result out of the work registers directly later.
        } else {
            FUNC0(hal->dmadesc_rx, hal->rcv_buffer, ((hal->rx_bitlen + 7) / 8), true);
            FUNC4(hw, hal->dmadesc_rx);
        }
    } else {
        //DMA temporary workaround: let RX DMA work somehow to avoid the issue in ESP32 v0/v1 silicon
        if (hal->dma_enabled) {
            FUNC4(hw, 0);
        }
    }

    if (hal->send_buffer) {
        if (!hal->dma_enabled) {
            //Need to copy data to registers manually
            FUNC6(hw, hal->send_buffer, hal->tx_bitlen);
        } else {
            FUNC0(hal->dmadesc_tx, hal->send_buffer, (hal->tx_bitlen + 7) / 8, false);
            FUNC5(hw, hal->dmadesc_tx);
        }
    }
    //in ESP32 these registers should be configured after the DMA is set
    if ((!hal->half_duplex && hal->rcv_buffer) || hal->send_buffer) {
        FUNC2(hw, 1);
    } else {
        FUNC2(hw, 0);
    }
    FUNC1(hw, (hal->rcv_buffer) ? 1 : 0);
}
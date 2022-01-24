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
struct TYPE_3__ {int /*<<< orphan*/  use_dma; int /*<<< orphan*/  mode; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_lsbfirst; int /*<<< orphan*/  rx_lsbfirst; } ;
typedef  TYPE_1__ spi_slave_hal_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(const spi_slave_hal_context_t *hal)
{
    FUNC0(hal->hw, hal->rx_lsbfirst);
    FUNC1(hal->hw, hal->tx_lsbfirst);
    FUNC2(hal->hw, hal->mode, hal->use_dma);
}
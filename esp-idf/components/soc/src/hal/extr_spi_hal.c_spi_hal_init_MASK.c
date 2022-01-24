#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * hw; } ;
typedef  TYPE_1__ spi_hal_context_t ;
typedef  int /*<<< orphan*/  spi_dev_t ;
struct TYPE_6__ {int /*<<< orphan*/ * hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* spi_periph_signal ; 

void FUNC5(spi_hal_context_t *hal, int host_id)
{
    FUNC0(hal, 0, sizeof(spi_hal_context_t));
    spi_dev_t *hw = spi_periph_signal[host_id].hw;
    hal->hw = hw;
    FUNC2(hw);

    //Force a transaction done interrupt. This interrupt won't fire yet because
    //we initialized the SPI interrupt as disabled. This way, we can just
    //enable the SPI interrupt and the interrupt handler will kick in, handling
    //any transactions that are queued.
    FUNC1(hw);
    FUNC3(hw);
    FUNC4(hw, 0, 0);
}
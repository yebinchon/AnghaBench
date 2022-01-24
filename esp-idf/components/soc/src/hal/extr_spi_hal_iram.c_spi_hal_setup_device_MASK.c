#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cs_pin_id; int /*<<< orphan*/  cs_hold; int /*<<< orphan*/  cs_setup; int /*<<< orphan*/  sio; int /*<<< orphan*/  half_duplex; int /*<<< orphan*/  mode; int /*<<< orphan*/  tx_lsbfirst; int /*<<< orphan*/  rx_lsbfirst; TYPE_1__* timing_conf; int /*<<< orphan*/  positive_cs; int /*<<< orphan*/  as_cs; int /*<<< orphan*/ * hw; } ;
typedef  TYPE_2__ spi_hal_context_t ;
typedef  int /*<<< orphan*/  spi_dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  clock_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(const spi_hal_context_t *hal)
{
    //Configure clock settings
    spi_dev_t *hw = hal->hw;
#ifdef SOC_SPI_SUPPORT_AS_CS
    spi_ll_master_set_cksel(hw, hal->cs_pin_id, hal->as_cs);
#endif
    FUNC6(hw, hal->cs_pin_id, hal->positive_cs);
    FUNC2(hw, &hal->timing_conf->clock_reg);
    //Configure bit order
    FUNC8(hw, hal->rx_lsbfirst);
    FUNC10(hw, hal->tx_lsbfirst);
    FUNC5(hw, hal->mode);
    //Configure misc stuff
    FUNC7(hw, hal->half_duplex);
    FUNC9(hw, hal->sio);
    //Configure CS pin and timing
    FUNC4(hw, hal->cs_setup);
    FUNC3(hw, hal->cs_hold);
    FUNC0(hw, hal->cs_pin_id);
}
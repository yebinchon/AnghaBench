#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int width; } ;
typedef  TYPE_1__ sdmmc_slot_config_t ;
struct TYPE_8__ {int slot; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_freq_khz; } ;
typedef  TYPE_2__ sdmmc_host_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  SDMMC_FREQ_HIGHSPEED ; 
 TYPE_2__ FUNC0 () ; 
 int /*<<< orphan*/  SDMMC_HOST_FLAG_DDR ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,TYPE_1__*) ; 

void FUNC11(int slot, int width)
{
    sdmmc_host_t config = FUNC0();
    config.max_freq_khz = SDMMC_FREQ_HIGHSPEED;
    config.slot = slot;
    sdmmc_slot_config_t slot_config = FUNC1();
    if (width != 0) {
        slot_config.width = width;
    }
    if (slot_config.width == 8) {
        config.flags &= ~SDMMC_HOST_FLAG_DDR;
    }
    FUNC3(FUNC9());
    FUNC3(FUNC10(slot, &slot_config));
    sdmmc_card_t* card = FUNC5(sizeof(sdmmc_card_t));
    FUNC2(card);
    FUNC3(FUNC7(&config, card));
    FUNC6(card);
    FUNC4(card);
    FUNC3(FUNC8());
}
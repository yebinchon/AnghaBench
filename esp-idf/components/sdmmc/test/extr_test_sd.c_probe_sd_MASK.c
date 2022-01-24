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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int width; } ;
typedef  TYPE_1__ sdmmc_slot_config_t ;
struct TYPE_8__ {int slot; int max_freq_khz; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ sdmmc_host_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  MALLOC_CAP_DMA ; 
 TYPE_2__ FUNC0 () ; 
 int /*<<< orphan*/  SDMMC_HOST_FLAG_1BIT ; 
 int /*<<< orphan*/  SDMMC_HOST_FLAG_8BIT ; 
 int /*<<< orphan*/  SDMMC_HOST_FLAG_DDR ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC16(int slot, int width, int freq_khz, int ddr)
{
    FUNC9();
    sdmmc_host_t config = FUNC0();
    config.slot = slot;
    config.max_freq_khz = freq_khz;
    sdmmc_slot_config_t slot_config = FUNC1();
    if (width == 1) {
        config.flags = SDMMC_HOST_FLAG_1BIT;
        slot_config.width = 1;
    } else if (width == 4) {
        config.flags &= ~SDMMC_HOST_FLAG_8BIT;
        slot_config.width = 4;
    } else {
        FUNC4(!ddr && "host driver does not support 8-line DDR mode yet");
    }
    if (!ddr) {
        config.flags &= ~SDMMC_HOST_FLAG_DDR;
    }
    FUNC3(FUNC13());
    FUNC3(FUNC14(slot, &slot_config));
    sdmmc_card_t* card = FUNC7(sizeof(sdmmc_card_t));
    FUNC2(card);
    FUNC3(FUNC10(&config, card));
    FUNC11(stdout, card);
    uint8_t* buffer = FUNC6(512, MALLOC_CAP_DMA);
    FUNC3(FUNC15(card, buffer, 0, 1));
    FUNC5(buffer);
    FUNC3(FUNC12());
    FUNC5(card);
    FUNC8();
}
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
struct TYPE_7__ {int gpio_miso; int gpio_mosi; int gpio_sck; int gpio_cs; } ;
typedef  TYPE_1__ sdspi_slot_config_t ;
struct TYPE_8__ {int /*<<< orphan*/  slot; } ;
typedef  TYPE_2__ sdmmc_host_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;

/* Variables and functions */
 TYPE_2__ FUNC0 () ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC13(int freq_khz, int pin_miso, int pin_mosi, int pin_sck, int pin_cs)
{
    FUNC7();
    sdmmc_host_t config = FUNC0();
    sdspi_slot_config_t slot_config = FUNC1();
    slot_config.gpio_miso = pin_miso;
    slot_config.gpio_mosi = pin_mosi;
    slot_config.gpio_sck = pin_sck;
    slot_config.gpio_cs = pin_cs;

    FUNC3(FUNC11());
    FUNC3(FUNC12(config.slot, &slot_config));
    sdmmc_card_t* card = FUNC5(sizeof(sdmmc_card_t));
    FUNC2(card);
    FUNC3(FUNC8(&config, card));
    FUNC9(stdout, card);
    FUNC3(FUNC10());
    FUNC4(card);
    FUNC6();
}
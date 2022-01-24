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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;
struct TYPE_3__ {int /*<<< orphan*/ * card; } ;
typedef  TYPE_1__ esp_slave_context_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int FUNC1_EN_MASK ; 
 int /*<<< orphan*/  SD_IO_CCCR_FN_READY ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

esp_err_t FUNC3(esp_slave_context_t *context)
{
    FUNC1(TAG, "wait_for_ioready");
    esp_err_t err;
    sdmmc_card_t *card = context->card;
    // wait for the card to become ready
    uint8_t ior = 0;
    while ((ior & FUNC1_EN_MASK) == 0) {
        err = FUNC2(card, 0, SD_IO_CCCR_FN_READY, &ior);
        if (err != ESP_OK) return err;
        FUNC0(TAG, "IOR: 0x%02x", ior);
    }
    return ESP_OK;
}
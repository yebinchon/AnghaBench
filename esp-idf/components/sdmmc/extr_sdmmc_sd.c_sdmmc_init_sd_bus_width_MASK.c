#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int log_bus_width; } ;
typedef  TYPE_1__ sdmmc_card_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 

esp_err_t FUNC2(sdmmc_card_t* card)
{
    int width = 1;
    if (card->log_bus_width == 2) {
        width = 4;
    } else if (card->log_bus_width == 3) {
        width = 8;
    }
    esp_err_t err = FUNC1(card, width);
    if (err != ESP_OK) {
        FUNC0(TAG, "set_bus_width failed (0x%x)", err);
        return err;
    }
    return ESP_OK;
}
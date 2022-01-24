#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ ESP_BLE_AD_MANUFACTURER_SPECIFIC_TYPE ; 
 scalar_t__ ESP_BLE_AD_TYPE_128SERVICE_DATA ; 
 scalar_t__ ESP_BLE_AD_TYPE_FLAG ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

uint8_t *FUNC2( uint8_t *adv_data, uint8_t type, uint8_t *length)
{
    if (((type < ESP_BLE_AD_TYPE_FLAG) || (type > ESP_BLE_AD_TYPE_128SERVICE_DATA)) &&
            (type != ESP_BLE_AD_MANUFACTURER_SPECIFIC_TYPE)) {
        FUNC1("the eir type not define, type = %x\n", type);
        return NULL;
    }

    if (adv_data == NULL) {
        FUNC1("Invalid p_eir data.\n");
        return NULL;
    }

    return (FUNC0( adv_data, type, length));
}
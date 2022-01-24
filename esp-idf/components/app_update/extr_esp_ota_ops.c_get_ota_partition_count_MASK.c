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
typedef  int uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MIN ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_APP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint8_t FUNC2(void)
{
    uint16_t ota_app_count = 0;
    while (FUNC1(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_app_count, NULL) != NULL) {
            FUNC0(ota_app_count < 16 && "must erase the partition before writing to it");
            ota_app_count++;
    }
    return ota_app_count;
}
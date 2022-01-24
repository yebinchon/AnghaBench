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
struct TYPE_7__ {int subtype; } ;
typedef  TYPE_1__ esp_partition_t ;
struct TYPE_8__ {int ota_seq; scalar_t__ crc; int /*<<< orphan*/  ota_state; } ;
typedef  TYPE_2__ esp_ota_select_entry_t ;
typedef  int /*<<< orphan*/  esp_ota_img_states_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ESP_OK ; 
 int ESP_PARTITION_SUBTYPE_APP_OTA_MIN ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 

esp_err_t FUNC4(const esp_partition_t *partition, esp_ota_img_states_t *ota_state)
{
    if (partition == NULL || ota_state == NULL) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!FUNC2(partition)) {
        return ESP_ERR_NOT_SUPPORTED;
    }

    esp_ota_select_entry_t otadata[2];
    int ota_app_count = FUNC1();
    if (FUNC3(otadata) == NULL || ota_app_count == 0) {
        return ESP_ERR_NOT_FOUND;
    }

    int req_ota_slot = partition->subtype - ESP_PARTITION_SUBTYPE_APP_OTA_MIN;
    bool not_found = true;
    for (int i = 0; i < 2; ++i) {
        int ota_slot = (otadata[i].ota_seq - 1) % ota_app_count;
        if (ota_slot == req_ota_slot && otadata[i].crc == FUNC0(&otadata[i])) {
            *ota_state = otadata[i].ota_state;
            not_found = false;
            break;
        }
    }

    if (not_found) {
        return ESP_ERR_NOT_FOUND;
    }

    return ESP_OK;
}
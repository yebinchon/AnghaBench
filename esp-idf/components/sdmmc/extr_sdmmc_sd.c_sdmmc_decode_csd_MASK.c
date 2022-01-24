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
typedef  int /*<<< orphan*/  sdmmc_response_t ;
struct TYPE_3__ {int csd_ver; int capacity; int read_block_len; int sector_size; int tr_speed; int /*<<< orphan*/  card_command_class; } ;
typedef  TYPE_1__ sdmmc_csd_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  SD_CSD_CSDVER_1_0 129 
#define  SD_CSD_CSDVER_2_0 128 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int SD_CSD_SPEED_50_MHZ ; 
 int SD_CSD_V2_BL_LEN ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 

esp_err_t FUNC8(sdmmc_response_t response, sdmmc_csd_t* out_csd)
{
    out_csd->csd_ver = FUNC4(response);
    switch (out_csd->csd_ver) {
    case SD_CSD_CSDVER_2_0:
        out_csd->capacity = FUNC7(response);
        out_csd->read_block_len = SD_CSD_V2_BL_LEN;
        break;
    case SD_CSD_CSDVER_1_0:
        out_csd->capacity = FUNC2(response);
        out_csd->read_block_len = FUNC5(response);
        break;
    default:
        FUNC0(TAG, "unknown SD CSD structure version 0x%x", out_csd->csd_ver);
        return ESP_ERR_NOT_SUPPORTED;
    }
    out_csd->card_command_class = FUNC3(response);
    int read_bl_size = 1 << out_csd->read_block_len;
    out_csd->sector_size = FUNC1(read_bl_size, 512);
    if (out_csd->sector_size < read_bl_size) {
        out_csd->capacity *= read_bl_size / out_csd->sector_size;
    }
    int speed = FUNC6(response);
    if (speed == SD_CSD_SPEED_50_MHZ) {
        out_csd->tr_speed = 50000000;
    } else {
        out_csd->tr_speed = 25000000;
    }
    return ESP_OK;
}
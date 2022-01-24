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
struct TYPE_3__ {scalar_t__ csd_ver; int capacity; int read_block_len; int sector_size; scalar_t__ tr_speed; int /*<<< orphan*/  mmc_ver; } ;
typedef  TYPE_1__ sdmmc_csd_t ;
typedef  int esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int ESP_OK ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMC_CSD_CSDVER_1_0 ; 
 scalar_t__ MMC_CSD_CSDVER_2_0 ; 
 scalar_t__ MMC_CSD_CSDVER_EXT_CSD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 

esp_err_t FUNC6(sdmmc_response_t response, sdmmc_csd_t* out_csd)
{
    out_csd->csd_ver = FUNC3(response);
    if (out_csd->csd_ver == MMC_CSD_CSDVER_1_0 ||
            out_csd->csd_ver == MMC_CSD_CSDVER_2_0 ||
            out_csd->csd_ver == MMC_CSD_CSDVER_EXT_CSD) {
        out_csd->mmc_ver = FUNC4(response);
        out_csd->capacity = FUNC2(response);
        out_csd->read_block_len = FUNC5(response);
    } else {
        FUNC0(TAG, "unknown MMC CSD structure version 0x%x\n", out_csd->csd_ver);
        return 1;
    }
    int read_bl_size = 1 << out_csd->read_block_len;
    out_csd->sector_size = FUNC1(read_bl_size, 512);
    if (out_csd->sector_size < read_bl_size) {
        out_csd->capacity *= read_bl_size / out_csd->sector_size;
    }
    /* tr_speed will be determined when reading CXD */
    out_csd->tr_speed = 0;
    return ESP_OK;
}
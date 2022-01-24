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
struct TYPE_3__ {scalar_t__ date; void* serial; scalar_t__ revision; int /*<<< orphan*/  name; scalar_t__ oem_id; int /*<<< orphan*/  mfg_id; } ;
typedef  TYPE_1__ sdmmc_cid_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int MMC_CSD_MMCVER_1_0 ; 
 int MMC_CSD_MMCVER_1_4 ; 
 int MMC_CSD_MMCVER_2_0 ; 
 int MMC_CSD_MMCVER_3_1 ; 
 int MMC_CSD_MMCVER_4_0 ; 

esp_err_t FUNC7(int mmc_ver, sdmmc_response_t resp, sdmmc_cid_t* out_cid)
{
    if (mmc_ver == MMC_CSD_MMCVER_1_0 ||
            mmc_ver == MMC_CSD_MMCVER_1_4) {
        out_cid->mfg_id = FUNC1(resp);
        out_cid->oem_id = 0;
        FUNC4(resp, out_cid->name);
        out_cid->revision = FUNC6(resp);
        out_cid->serial = FUNC5(resp);
        out_cid->date = FUNC0(resp);
    } else if (mmc_ver == MMC_CSD_MMCVER_2_0 ||
            mmc_ver == MMC_CSD_MMCVER_3_1 ||
            mmc_ver == MMC_CSD_MMCVER_4_0) {
        out_cid->mfg_id = FUNC2(resp);
        out_cid->oem_id = FUNC3(resp);
        FUNC4(resp, out_cid->name);
        out_cid->revision = 0;
        out_cid->serial = FUNC5(resp);
        out_cid->date = 0;
    }
    return ESP_OK;
}
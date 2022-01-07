
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sdmmc_response_t ;
struct TYPE_3__ {scalar_t__ csd_ver; int capacity; int read_block_len; int sector_size; scalar_t__ tr_speed; int mmc_ver; } ;
typedef TYPE_1__ sdmmc_csd_t ;
typedef int esp_err_t ;


 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_OK ;
 int MIN (int,int) ;
 int MMC_CSD_CAPACITY (int ) ;
 scalar_t__ MMC_CSD_CSDVER (int ) ;
 scalar_t__ MMC_CSD_CSDVER_1_0 ;
 scalar_t__ MMC_CSD_CSDVER_2_0 ;
 scalar_t__ MMC_CSD_CSDVER_EXT_CSD ;
 int MMC_CSD_MMCVER (int ) ;
 int MMC_CSD_READ_BL_LEN (int ) ;
 int TAG ;

esp_err_t sdmmc_mmc_decode_csd(sdmmc_response_t response, sdmmc_csd_t* out_csd)
{
    out_csd->csd_ver = MMC_CSD_CSDVER(response);
    if (out_csd->csd_ver == MMC_CSD_CSDVER_1_0 ||
            out_csd->csd_ver == MMC_CSD_CSDVER_2_0 ||
            out_csd->csd_ver == MMC_CSD_CSDVER_EXT_CSD) {
        out_csd->mmc_ver = MMC_CSD_MMCVER(response);
        out_csd->capacity = MMC_CSD_CAPACITY(response);
        out_csd->read_block_len = MMC_CSD_READ_BL_LEN(response);
    } else {
        ESP_LOGE(TAG, "unknown MMC CSD structure version 0x%x\n", out_csd->csd_ver);
        return 1;
    }
    int read_bl_size = 1 << out_csd->read_block_len;
    out_csd->sector_size = MIN(read_bl_size, 512);
    if (out_csd->sector_size < read_bl_size) {
        out_csd->capacity *= read_bl_size / out_csd->sector_size;
    }

    out_csd->tr_speed = 0;
    return ESP_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sdmmc_response_t ;
struct TYPE_3__ {int csd_ver; int capacity; int read_block_len; int sector_size; int tr_speed; int card_command_class; } ;
typedef TYPE_1__ sdmmc_csd_t ;
typedef int esp_err_t ;


 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int MIN (int,int) ;
 int SD_CSD_CAPACITY (int ) ;
 int SD_CSD_CCC (int ) ;
 int SD_CSD_CSDVER (int ) ;


 int SD_CSD_READ_BL_LEN (int ) ;
 int SD_CSD_SPEED (int ) ;
 int SD_CSD_SPEED_50_MHZ ;
 int SD_CSD_V2_BL_LEN ;
 int SD_CSD_V2_CAPACITY (int ) ;
 int TAG ;

esp_err_t sdmmc_decode_csd(sdmmc_response_t response, sdmmc_csd_t* out_csd)
{
    out_csd->csd_ver = SD_CSD_CSDVER(response);
    switch (out_csd->csd_ver) {
    case 128:
        out_csd->capacity = SD_CSD_V2_CAPACITY(response);
        out_csd->read_block_len = SD_CSD_V2_BL_LEN;
        break;
    case 129:
        out_csd->capacity = SD_CSD_CAPACITY(response);
        out_csd->read_block_len = SD_CSD_READ_BL_LEN(response);
        break;
    default:
        ESP_LOGE(TAG, "unknown SD CSD structure version 0x%x", out_csd->csd_ver);
        return ESP_ERR_NOT_SUPPORTED;
    }
    out_csd->card_command_class = SD_CSD_CCC(response);
    int read_bl_size = 1 << out_csd->read_block_len;
    out_csd->sector_size = MIN(read_bl_size, 512);
    if (out_csd->sector_size < read_bl_size) {
        out_csd->capacity *= read_bl_size / out_csd->sector_size;
    }
    int speed = SD_CSD_SPEED(response);
    if (speed == SD_CSD_SPEED_50_MHZ) {
        out_csd->tr_speed = 50000000;
    } else {
        out_csd->tr_speed = 25000000;
    }
    return ESP_OK;
}

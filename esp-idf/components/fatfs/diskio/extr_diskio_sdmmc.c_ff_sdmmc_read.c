
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;
typedef int UINT ;
typedef int DWORD ;
typedef int DRESULT ;
typedef size_t BYTE ;


 int ESP_LOGE (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int RES_ERROR ;
 int RES_OK ;
 int TAG ;
 int assert (int *) ;
 int ** s_cards ;
 scalar_t__ sdmmc_read_sectors (int *,size_t*,int ,int ) ;

DRESULT ff_sdmmc_read (BYTE pdrv, BYTE* buff, DWORD sector, UINT count)
{
    sdmmc_card_t* card = s_cards[pdrv];
    assert(card);
    esp_err_t err = sdmmc_read_sectors(card, buff, sector, count);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "sdmmc_read_blocks failed (%d)", err);
        return RES_ERROR;
    }
    return RES_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sdmmc_card_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_SIZE ;
 int SD_ARG_CMD53_BLOCK_MODE ;
 int SD_ARG_CMD53_INCREMENT ;
 int SD_ARG_CMD53_READ ;
 int sdmmc_io_rw_extended (int *,int ,int ,int,void*,size_t) ;

esp_err_t sdmmc_io_read_blocks(sdmmc_card_t* card, uint32_t function,
        uint32_t addr, void* dst, size_t size)
{
    if (size % 4 != 0) {
        return ESP_ERR_INVALID_SIZE;
    }
    return sdmmc_io_rw_extended(card, function, addr,
            SD_ARG_CMD53_READ | SD_ARG_CMD53_INCREMENT | SD_ARG_CMD53_BLOCK_MODE,
            dst, size);
}

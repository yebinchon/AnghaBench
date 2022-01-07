
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;
typedef scalar_t__ esp_err_t ;
typedef int UINT ;
typedef int DWORD ;
typedef int DRESULT ;
typedef size_t BYTE ;


 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_LOGV (int ,char*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ ESP_OK ;
 int RES_ERROR ;
 int RES_OK ;
 int SPI_FLASH_SEC_SIZE ;
 int TAG ;
 int assert (int const*) ;
 scalar_t__ esp_partition_read (int const*,int,size_t*,int) ;
 int ** ff_raw_handles ;

DRESULT ff_raw_read (BYTE pdrv, BYTE *buff, DWORD sector, UINT count)
{
    ESP_LOGV(TAG, "ff_raw_read - pdrv=%i, sector=%i, count=%in", (unsigned int)pdrv, (unsigned int)sector, (unsigned int)count);
    const esp_partition_t* part = ff_raw_handles[pdrv];
    assert(part);
    esp_err_t err = esp_partition_read(part, sector * SPI_FLASH_SEC_SIZE, buff, count * SPI_FLASH_SEC_SIZE);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_partition_read failed (0x%x)", err);
        return RES_ERROR;
    }
    return RES_OK;
}

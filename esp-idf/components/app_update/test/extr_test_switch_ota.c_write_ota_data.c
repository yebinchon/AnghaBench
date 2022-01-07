
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;
typedef int esp_ota_select_entry_t ;


 int SPI_FLASH_SEC_SIZE ;
 int esp_partition_write (int const*,int,int *,int) ;

__attribute__((used)) static void write_ota_data(const esp_partition_t *otadata_partition, esp_ota_select_entry_t *ota_data, int sec_id)
{
    esp_partition_write(otadata_partition, SPI_FLASH_SEC_SIZE * sec_id, &ota_data[sec_id], sizeof(esp_ota_select_entry_t));
}

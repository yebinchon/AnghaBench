
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_pos_t ;
typedef int esp_image_metadata_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_IMAGE_LOAD ;
 int image_load (int ,int const*,int *) ;

esp_err_t bootloader_load_image(const esp_partition_pos_t *part, esp_image_metadata_t *data)
{



    return ESP_FAIL;

}

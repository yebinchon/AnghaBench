
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_pos_t ;
typedef int esp_image_metadata_t ;
typedef int esp_image_load_mode_t ;
typedef int esp_err_t ;


 int image_load (int ,int const*,int *) ;

esp_err_t esp_image_verify(esp_image_load_mode_t mode, const esp_partition_pos_t *part, esp_image_metadata_t *data)
{
    return image_load(mode, part, data);
}

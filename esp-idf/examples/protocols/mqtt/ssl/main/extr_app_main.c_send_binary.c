
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spi_flash_mmap_handle_t ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_mqtt_client_handle_t ;


 int ESP_LOGI (int ,char*,int) ;
 int SPI_FLASH_MMAP_DATA ;
 int TAG ;
 int esp_mqtt_client_publish (int ,char*,void const*,int ,int ,int ) ;
 TYPE_1__* esp_ota_get_running_partition () ;
 int esp_partition_mmap (TYPE_1__ const*,int ,int ,int ,void const**,int *) ;

__attribute__((used)) static void send_binary(esp_mqtt_client_handle_t client)
{
    spi_flash_mmap_handle_t out_handle;
    const void *binary_address;
    const esp_partition_t* partition = esp_ota_get_running_partition();
    esp_partition_mmap(partition, 0, partition->size, SPI_FLASH_MMAP_DATA, &binary_address, &out_handle);
    int msg_id = esp_mqtt_client_publish(client, "/topic/binary", binary_address, partition->size, 0, 0);
    ESP_LOGI(TAG, "binary sent with msg_id=%d", msg_id);
}

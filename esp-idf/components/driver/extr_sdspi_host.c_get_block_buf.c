
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int * block_buf; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int MALLOC_CAP_DMA ;
 int SDSPI_BLOCK_BUF_SIZE ;
 int * heap_caps_malloc (int ,int ) ;
 TYPE_1__* s_slots ;

__attribute__((used)) static esp_err_t get_block_buf(int slot, uint8_t** out_buf)
{
    if (s_slots[slot].block_buf == ((void*)0)) {
        s_slots[slot].block_buf = heap_caps_malloc(SDSPI_BLOCK_BUF_SIZE, MALLOC_CAP_DMA);
        if (s_slots[slot].block_buf == ((void*)0)) {
            return ESP_ERR_NO_MEM;
        }
    }
    *out_buf = s_slots[slot].block_buf;
    return ESP_OK;
}

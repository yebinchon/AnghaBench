
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ magic; int text_offset; size_t text_size; size_t data_size; int bss_size; } ;
typedef TYPE_1__ ulp_binary_header_t ;
typedef TYPE_1__ uint8_t ;
typedef int uint32_t ;
typedef int header ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_SIZE ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGD (int ,char*,size_t,size_t,int,size_t,size_t,int ) ;
 int ESP_OK ;
 scalar_t__ RTC_SLOW_MEM ;
 int TAG ;
 scalar_t__ ULP_BINARY_MAGIC_ESP32 ;
 size_t ULP_RESERVE_MEM ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,size_t) ;
 int memset (TYPE_1__*,int ,int ) ;

esp_err_t ulp_load_binary(uint32_t load_addr, const uint8_t* program_binary, size_t program_size)
{
    size_t program_size_bytes = program_size * sizeof(uint32_t);
    size_t load_addr_bytes = load_addr * sizeof(uint32_t);

    if (program_size_bytes < sizeof(ulp_binary_header_t)) {
        return ESP_ERR_INVALID_SIZE;
    }
    if (load_addr_bytes > ULP_RESERVE_MEM) {
        return ESP_ERR_INVALID_ARG;
    }
    if (load_addr_bytes + program_size_bytes > ULP_RESERVE_MEM) {
        return ESP_ERR_INVALID_SIZE;
    }


    ulp_binary_header_t header;
    memcpy(&header, program_binary, sizeof(header));

    if (header.magic != ULP_BINARY_MAGIC_ESP32) {
        return ESP_ERR_NOT_SUPPORTED;
    }

    size_t total_size = (size_t) header.text_offset + (size_t) header.text_size +
            (size_t) header.data_size;

    ESP_LOGD(TAG, "program_size_bytes: %d total_size: %d offset: %d .text: %d, .data: %d, .bss: %d",
            program_size_bytes, total_size, header.text_offset,
            header.text_size, header.data_size, header.bss_size);

    if (total_size != program_size_bytes) {
        return ESP_ERR_INVALID_SIZE;
    }

    size_t text_data_size = header.text_size + header.data_size;
    uint8_t* base = (uint8_t*) RTC_SLOW_MEM;

    memcpy(base + load_addr_bytes, program_binary + header.text_offset, text_data_size);
    memset(base + load_addr_bytes + text_data_size, 0, header.bss_size);

    return ESP_OK;
}

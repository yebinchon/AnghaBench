
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {scalar_t__ (* func ) (TYPE_1__ const*,int*,int *) ;scalar_t__ code; } ;
typedef TYPE_1__ cis_tuple_t ;
typedef int FILE ;


 scalar_t__ CISTPL_CODE_END ;
 int ESP_LOG_BUFFER_HEXDUMP (char*,int*,size_t,int ) ;
 int ESP_LOG_DEBUG ;
 scalar_t__ ESP_OK ;
 scalar_t__ cis_tuple_func_default (int *,int*,int *) ;
 TYPE_1__* get_tuple (int) ;
 int * stdout ;
 scalar_t__ stub1 (TYPE_1__ const*,int*,int *) ;

esp_err_t sdmmc_io_print_cis_info(uint8_t* buffer, size_t buffer_size, FILE* fp)
{
    ESP_LOG_BUFFER_HEXDUMP("CIS", buffer, buffer_size, ESP_LOG_DEBUG);
    if (!fp) fp = stdout;

    uint8_t* cis = buffer;
    do {
        const cis_tuple_t* tuple = get_tuple(cis[0]);
        int size = cis[1];
        esp_err_t ret = ESP_OK;
        if (tuple) {
            ret = tuple->func(tuple, cis, fp);
        } else {
            ret = cis_tuple_func_default(((void*)0), cis, fp);
        }
        if (ret != ESP_OK) return ret;
        cis += 2 + size;
        if (tuple && tuple->code == CISTPL_CODE_END) break;
    } while (cis < buffer + buffer_size) ;
    return ESP_OK;
}

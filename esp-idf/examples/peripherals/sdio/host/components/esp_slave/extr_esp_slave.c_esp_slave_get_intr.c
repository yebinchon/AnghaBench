
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_slave_context_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 int ESP_LOGV (int ,char*) ;
 scalar_t__ ESP_OK ;
 int HOST_SLC0HOST_INT_RAW_REG ;
 int HOST_SLC0HOST_INT_ST_REG ;
 int TAG ;
 scalar_t__ esp_slave_read_bytes (int *,int ,int *,int) ;

esp_err_t esp_slave_get_intr(esp_slave_context_t *context, uint32_t *intr_raw, uint32_t *intr_st)
{
    esp_err_t r;
    ESP_LOGV(TAG, "get_intr");
    if (intr_raw == ((void*)0) && intr_st == ((void*)0)) return ESP_ERR_INVALID_ARG;

    if (intr_raw != ((void*)0)) {
        r= esp_slave_read_bytes(context, HOST_SLC0HOST_INT_RAW_REG, (uint8_t*)intr_raw, 4);
        if (r != ESP_OK) return r;
    }
    if (intr_st != ((void*)0)) {
        r = esp_slave_read_bytes(context, HOST_SLC0HOST_INT_ST_REG, (uint8_t*)intr_st, 4);
        if (r != ESP_OK) return r;
    }
    return ESP_OK;
}

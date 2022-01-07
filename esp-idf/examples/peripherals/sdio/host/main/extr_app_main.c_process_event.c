
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_slave_context_t ;
typedef scalar_t__ esp_err_t ;


 int BIT (int) ;
 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NOT_FINISHED ;
 scalar_t__ ESP_ERR_NOT_FOUND ;
 scalar_t__ ESP_ERR_TIMEOUT ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,size_t) ;
 int ESP_LOG_BUFFER_HEXDUMP (int ,int ,size_t,int ) ;
 int ESP_LOG_INFO ;
 scalar_t__ ESP_OK ;
 int HOST_SLC0_RX_NEW_PACKET_INT_ST ;
 size_t READ_BUFFER_LEN ;
 int TAG ;
 scalar_t__ esp_slave_clear_intr (int *,int) ;
 scalar_t__ esp_slave_get_intr (int *,int*,int*) ;
 scalar_t__ esp_slave_get_packet (int *,int ,size_t,size_t*,int const) ;
 scalar_t__ esp_slave_wait_int (int *,int ) ;
 int rcv_buffer ;

esp_err_t process_event(esp_slave_context_t *context)
{
    esp_err_t ret = esp_slave_wait_int(context, 0);
    if (ret == ESP_ERR_TIMEOUT) {
        return ret;
    }
    ESP_ERROR_CHECK(ret);

    uint32_t intr_raw, intr_st;
    ret = esp_slave_get_intr(context, &intr_raw, &intr_st);
    ESP_ERROR_CHECK(ret);
    ret = esp_slave_clear_intr(context, intr_raw);
    ESP_ERROR_CHECK(ret);
    ESP_LOGD(TAG, "intr: %08X", intr_raw);

    for (int i = 0; i < 8; i++) {
        if (intr_raw & BIT(i)) {
            ESP_LOGI(TAG, "host int: %d", i);
        }
    }

    const int wait_ms = 50;
    if (intr_raw & HOST_SLC0_RX_NEW_PACKET_INT_ST) {
        ESP_LOGD(TAG, "new packet coming");
        while (1) {
            size_t size_read = READ_BUFFER_LEN;
            ret = esp_slave_get_packet(context, rcv_buffer, READ_BUFFER_LEN, &size_read, wait_ms);
            if (ret == ESP_ERR_NOT_FOUND) {
                ESP_LOGE(TAG, "interrupt but no data can be read");
                break;
            } else if (ret != ESP_OK && ret != ESP_ERR_NOT_FINISHED) {
                ESP_LOGE(TAG, "rx packet error: %08X", ret);
                return ret;
            }

            ESP_LOGI(TAG, "receive data, size: %d", size_read);
            ESP_LOG_BUFFER_HEXDUMP(TAG, rcv_buffer, size_read, ESP_LOG_INFO);
            if (ret == ESP_OK) {
                break;
            }
        }
    }
    return ESP_OK;
}

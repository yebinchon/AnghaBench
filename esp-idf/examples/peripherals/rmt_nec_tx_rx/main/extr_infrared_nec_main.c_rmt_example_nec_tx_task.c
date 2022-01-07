
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int rmt_item32_t ;


 int ESP_LOGI (int ,char*) ;
 int ESP_LOG_INFO ;
 int NEC_DATA_ITEM_NUM ;
 int NEC_TAG ;
 int RMT_TX_CHANNEL ;
 int RMT_TX_DATA_NUM ;
 int esp_log_level_set (int ,int ) ;
 int free (int *) ;
 scalar_t__ malloc (size_t) ;
 int memset (void*,int ,size_t) ;
 int nec_build_items (int,int *,int,int,int) ;
 int nec_tx_init () ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 int rmt_wait_tx_done (int,int ) ;
 int rmt_write_items (int,int *,int,int) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void rmt_example_nec_tx_task(void *arg)
{
    vTaskDelay(10);
    nec_tx_init();
    esp_log_level_set(NEC_TAG, ESP_LOG_INFO);
    int channel = RMT_TX_CHANNEL;
    uint16_t cmd = 0x0;
    uint16_t addr = 0x11;
    int nec_tx_num = RMT_TX_DATA_NUM;
    for(;;) {
        ESP_LOGI(NEC_TAG, "RMT TX DATA");
        size_t size = (sizeof(rmt_item32_t) * NEC_DATA_ITEM_NUM * nec_tx_num);

        rmt_item32_t* item = (rmt_item32_t*) malloc(size);
        int item_num = NEC_DATA_ITEM_NUM * nec_tx_num;
        memset((void*) item, 0, size);
        int i, offset = 0;
        while(1) {

            i = nec_build_items(channel, item + offset, item_num - offset, ((~addr) << 8) | addr, ((~cmd) << 8) | cmd);
            if(i < 0) {
                break;
            }
            cmd++;
            addr++;
            offset += i;
        }

        rmt_write_items(channel, item, item_num, 1);

        rmt_wait_tx_done(channel, portMAX_DELAY);

        free(item);
        vTaskDelay(2000 / portTICK_PERIOD_MS);
    }
    vTaskDelete(((void*)0));
}

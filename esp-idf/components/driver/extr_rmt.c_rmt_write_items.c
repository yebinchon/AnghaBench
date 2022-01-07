
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int intr_alloc_flags; int tx_len_rem; int tx_sub_len; int wait_done; int tx_sem; scalar_t__ tx_offset; int const* tx_data; } ;
typedef TYPE_5__ rmt_obj_t ;
typedef int rmt_item32_t ;
typedef size_t rmt_channel_t ;
typedef int esp_err_t ;
struct TYPE_15__ {TYPE_2__* conf_ch; } ;
struct TYPE_14__ {TYPE_4__* chan; } ;
struct TYPE_12__ {TYPE_3__* data32; } ;
struct TYPE_11__ {scalar_t__ val; } ;
struct TYPE_9__ {int mem_size; } ;
struct TYPE_10__ {TYPE_1__ conf0; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_INTR_FLAG_IRAM ;
 int ESP_LOGE (int ,int ) ;
 int ESP_OK ;
 TYPE_8__ RMT ;
 TYPE_7__ RMTMEM ;
 int RMT_ADDR_ERROR_STR ;
 int RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;
 int RMT_DRIVER_ERROR_STR ;
 int RMT_DRIVER_LENGTH_ERROR_STR ;
 int RMT_MEM_ITEM_NUM ;
 int RMT_PSRAM_BUFFER_WARN_STR ;
 int RMT_TAG ;
 int esp_ptr_internal (int const*) ;
 TYPE_5__** p_rmt_obj ;
 int portMAX_DELAY ;
 int rmt_fill_memory (size_t,int const*,int,int ) ;
 int rmt_set_tx_loop_mode (size_t,int) ;
 int rmt_set_tx_thr_intr_en (size_t,int,int) ;
 int rmt_tx_start (size_t,int) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

esp_err_t rmt_write_items(rmt_channel_t channel, const rmt_item32_t* rmt_item, int item_num, bool wait_tx_done)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(p_rmt_obj[channel] != ((void*)0), RMT_DRIVER_ERROR_STR, ESP_FAIL);
    RMT_CHECK(rmt_item != ((void*)0), RMT_ADDR_ERROR_STR, ESP_FAIL);
    RMT_CHECK(item_num > 0, RMT_DRIVER_LENGTH_ERROR_STR, ESP_ERR_INVALID_ARG);
    rmt_obj_t* p_rmt = p_rmt_obj[channel];
    int block_num = RMT.conf_ch[channel].conf0.mem_size;
    int item_block_len = block_num * RMT_MEM_ITEM_NUM;
    int item_sub_len = block_num * RMT_MEM_ITEM_NUM / 2;
    int len_rem = item_num;
    xSemaphoreTake(p_rmt->tx_sem, portMAX_DELAY);

    if(item_num >= item_block_len) {
        rmt_fill_memory(channel, rmt_item, item_block_len, 0);
        len_rem -= item_block_len;
        rmt_set_tx_loop_mode(channel, 0);
        rmt_set_tx_thr_intr_en(channel, 1, item_sub_len);
        p_rmt->tx_data = rmt_item + item_block_len;
        p_rmt->tx_len_rem = len_rem;
        p_rmt->tx_offset = 0;
        p_rmt->tx_sub_len = item_sub_len;
    } else {
        rmt_fill_memory(channel, rmt_item, len_rem, 0);
        RMTMEM.chan[channel].data32[len_rem].val = 0;
        p_rmt->tx_len_rem = 0;
    }
    rmt_tx_start(channel, 1);
    p_rmt->wait_done = wait_tx_done;
    if(wait_tx_done) {
        xSemaphoreTake(p_rmt->tx_sem, portMAX_DELAY);
        xSemaphoreGive(p_rmt->tx_sem);
    }
    return ESP_OK;
}

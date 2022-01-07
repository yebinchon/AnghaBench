
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


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int intr_alloc_flags; size_t sample_size_remain; int tx_sub_len; int translator; int wait_done; int tx_sem; int const* sample_cur; scalar_t__ tx_len_rem; scalar_t__ tx_offset; int tx_buf; int tx_data; int (* sample_to_rmt ) (void*,int ,size_t,int const,size_t*,size_t*) ;} ;
typedef TYPE_5__ rmt_obj_t ;
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
 int RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;
 int RMT_DRIVER_ERROR_STR ;
 int RMT_MEM_ITEM_NUM ;
 int RMT_PSRAM_BUFFER_WARN_STR ;
 int RMT_TAG ;
 int RMT_TRANSLATOR_UNINIT_STR ;
 int esp_ptr_internal (int const*) ;
 TYPE_5__** p_rmt_obj ;
 int portMAX_DELAY ;
 int rmt_fill_memory (size_t,int ,size_t,int ) ;
 int rmt_set_tx_thr_intr_en (size_t,int,int const) ;
 int rmt_tx_start (size_t,int) ;
 int stub1 (void*,int ,size_t,int const,size_t*,size_t*) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

esp_err_t rmt_write_sample(rmt_channel_t channel, const uint8_t *src, size_t src_size, bool wait_tx_done)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(p_rmt_obj[channel] != ((void*)0), RMT_DRIVER_ERROR_STR, ESP_FAIL);
    RMT_CHECK(p_rmt_obj[channel]->sample_to_rmt != ((void*)0),RMT_TRANSLATOR_UNINIT_STR, ESP_FAIL);
    size_t item_num = 0;
    size_t translated_size = 0;
    rmt_obj_t* p_rmt = p_rmt_obj[channel];
    const uint32_t item_block_len = RMT.conf_ch[channel].conf0.mem_size * RMT_MEM_ITEM_NUM;
    const uint32_t item_sub_len = item_block_len / 2;
    xSemaphoreTake(p_rmt->tx_sem, portMAX_DELAY);
    p_rmt->sample_to_rmt((void *)src, p_rmt->tx_buf, src_size, item_block_len, &translated_size, &item_num);
    p_rmt->sample_size_remain = src_size - translated_size;
    p_rmt->sample_cur = src + translated_size;
    rmt_fill_memory(channel, p_rmt->tx_buf, item_num, 0);
    if (item_num == item_block_len) {
        rmt_set_tx_thr_intr_en(channel, 1, item_sub_len);
        p_rmt->tx_data = p_rmt->tx_buf;
        p_rmt->tx_offset = 0;
        p_rmt->tx_sub_len = item_sub_len;
        p_rmt->translator = 1;
    } else {
        RMTMEM.chan[channel].data32[item_num].val = 0;
        p_rmt->tx_len_rem = 0;
        p_rmt->sample_cur = ((void*)0);
        p_rmt->translator = 0;
    }
    rmt_tx_start(channel, 1);
    p_rmt->wait_done = wait_tx_done;
    if (wait_tx_done) {
        xSemaphoreTake(p_rmt->tx_sem, portMAX_DELAY);
        xSemaphoreGive(p_rmt->tx_sem);
    }
    return ESP_OK;
}

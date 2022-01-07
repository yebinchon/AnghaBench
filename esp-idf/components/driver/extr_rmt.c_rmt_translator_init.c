
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int * sample_to_rmt_t ;
typedef int rmt_item32_t ;
typedef size_t rmt_channel_t ;
typedef int esp_err_t ;
struct TYPE_8__ {TYPE_2__* conf_ch; } ;
struct TYPE_7__ {int intr_alloc_flags; int * sample_cur; scalar_t__ sample_size_remain; int * sample_to_rmt; int * tx_buf; } ;
struct TYPE_5__ {int mem_size; } ;
struct TYPE_6__ {TYPE_1__ conf0; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_INTR_FLAG_IRAM ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int MALLOC_CAP_8BIT ;
 int MALLOC_CAP_INTERNAL ;
 TYPE_4__ RMT ;
 int RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;
 int RMT_DRIVER_ERROR_STR ;
 int RMT_MEM_ITEM_NUM ;
 int RMT_TAG ;
 int RMT_TRANSLATOR_NULL_STR ;
 scalar_t__ heap_caps_calloc (int,int const,int) ;
 scalar_t__ malloc (int const) ;
 TYPE_3__** p_rmt_obj ;

esp_err_t rmt_translator_init(rmt_channel_t channel, sample_to_rmt_t fn)
{
    RMT_CHECK(fn != ((void*)0), RMT_TRANSLATOR_NULL_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(p_rmt_obj[channel] != ((void*)0), RMT_DRIVER_ERROR_STR, ESP_FAIL);
    const uint32_t block_size = RMT.conf_ch[channel].conf0.mem_size * RMT_MEM_ITEM_NUM * sizeof(rmt_item32_t);
    if (p_rmt_obj[channel]->tx_buf == ((void*)0)) {

        p_rmt_obj[channel]->tx_buf = (rmt_item32_t *)malloc(block_size);







        if(p_rmt_obj[channel]->tx_buf == ((void*)0)) {
            ESP_LOGE(RMT_TAG, "RMT translator buffer create fail");
            return ESP_FAIL;
        }
    }
    p_rmt_obj[channel]->sample_to_rmt = fn;
    p_rmt_obj[channel]->sample_size_remain = 0;
    p_rmt_obj[channel]->sample_cur = ((void*)0);
    ESP_LOGD(RMT_TAG, "RMT translator init done");
    return ESP_OK;
}

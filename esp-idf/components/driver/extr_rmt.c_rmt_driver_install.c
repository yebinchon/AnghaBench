
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t channel; int wait_done; int translator; int intr_alloc_flags; int * rx_buf; int * tx_sem; int tx_sem_buffer; int * sample_to_rmt; scalar_t__ tx_sub_len; scalar_t__ tx_offset; int * tx_data; scalar_t__ tx_len_rem; } ;
typedef TYPE_1__ rmt_obj_t ;
typedef size_t rmt_channel_t ;
typedef scalar_t__ esp_err_t ;


 int BIT (size_t) ;
 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_INTR_FLAG_IRAM ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int MALLOC_CAP_8BIT ;
 int MALLOC_CAP_INTERNAL ;
 int RINGBUF_TYPE_NOSPLIT ;
 char* RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,char*,scalar_t__) ;
 int RMT_TAG ;
 int _lock_acquire_recursive (int *) ;
 int _lock_release_recursive (int *) ;
 scalar_t__ heap_caps_calloc (int,int,int) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__** p_rmt_obj ;
 int rmt_driver_isr_default ;
 int rmt_driver_isr_lock ;
 scalar_t__ rmt_isr_register (int ,int *,int,int *) ;
 int rmt_set_err_intr_en (size_t,int) ;
 int rmt_set_rx_intr_en (size_t,int) ;
 int rmt_set_tx_intr_en (size_t,int) ;
 int s_rmt_driver_channels ;
 int s_rmt_driver_intr_handle ;
 int * xRingbufferCreate (size_t,int ) ;
 void* xSemaphoreCreateBinary () ;
 int * xSemaphoreCreateBinaryStatic (int *) ;
 int xSemaphoreGive (int *) ;

esp_err_t rmt_driver_install(rmt_channel_t channel, size_t rx_buf_size, int intr_alloc_flags)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK((s_rmt_driver_channels & BIT(channel)) == 0, "RMT driver already installed for channel", ESP_ERR_INVALID_STATE);

    esp_err_t err = ESP_OK;

    if(p_rmt_obj[channel] != ((void*)0)) {
        ESP_LOGD(RMT_TAG, "RMT driver already installed");
        return ESP_ERR_INVALID_STATE;
    }


    p_rmt_obj[channel] = (rmt_obj_t*) malloc(sizeof(rmt_obj_t));
    if(p_rmt_obj[channel] == ((void*)0)) {
        ESP_LOGE(RMT_TAG, "RMT driver malloc error");
        return ESP_ERR_NO_MEM;
    }
    memset(p_rmt_obj[channel], 0, sizeof(rmt_obj_t));

    p_rmt_obj[channel]->tx_len_rem = 0;
    p_rmt_obj[channel]->tx_data = ((void*)0);
    p_rmt_obj[channel]->channel = channel;
    p_rmt_obj[channel]->tx_offset = 0;
    p_rmt_obj[channel]->tx_sub_len = 0;
    p_rmt_obj[channel]->wait_done = 0;
    p_rmt_obj[channel]->translator = 0;
    p_rmt_obj[channel]->sample_to_rmt = ((void*)0);
    if(p_rmt_obj[channel]->tx_sem == ((void*)0)) {

        p_rmt_obj[channel]->tx_sem = xSemaphoreCreateBinary();
        xSemaphoreGive(p_rmt_obj[channel]->tx_sem);
    }
    if(p_rmt_obj[channel]->rx_buf == ((void*)0) && rx_buf_size > 0) {
        p_rmt_obj[channel]->rx_buf = xRingbufferCreate(rx_buf_size, RINGBUF_TYPE_NOSPLIT);
        rmt_set_rx_intr_en(channel, 1);
        rmt_set_err_intr_en(channel, 1);
    }

    _lock_acquire_recursive(&rmt_driver_isr_lock);

    if(s_rmt_driver_channels == 0) {
        err = rmt_isr_register(rmt_driver_isr_default, ((void*)0), intr_alloc_flags, &s_rmt_driver_intr_handle);
    }
    if (err == ESP_OK) {
        s_rmt_driver_channels |= BIT(channel);
        rmt_set_tx_intr_en(channel, 1);
    }

    _lock_release_recursive(&rmt_driver_isr_lock);

    return err;
}

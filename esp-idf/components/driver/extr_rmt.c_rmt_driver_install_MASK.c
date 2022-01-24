#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t channel; int wait_done; int translator; int intr_alloc_flags; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_sem; int /*<<< orphan*/  tx_sem_buffer; int /*<<< orphan*/ * sample_to_rmt; scalar_t__ tx_sub_len; scalar_t__ tx_offset; int /*<<< orphan*/ * tx_data; scalar_t__ tx_len_rem; } ;
typedef  TYPE_1__ rmt_obj_t ;
typedef  size_t rmt_channel_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 int ESP_INTR_FLAG_IRAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int MALLOC_CAP_8BIT ; 
 int MALLOC_CAP_INTERNAL ; 
 int /*<<< orphan*/  RINGBUF_TYPE_NOSPLIT ; 
 char* RMT_CHANNEL_ERROR_STR ; 
 size_t RMT_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  RMT_TAG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__** p_rmt_obj ; 
 int /*<<< orphan*/  rmt_driver_isr_default ; 
 int /*<<< orphan*/  rmt_driver_isr_lock ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (size_t,int) ; 
 int /*<<< orphan*/  FUNC12 (size_t,int) ; 
 int s_rmt_driver_channels ; 
 int /*<<< orphan*/  s_rmt_driver_intr_handle ; 
 int /*<<< orphan*/ * FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC17(rmt_channel_t channel, size_t rx_buf_size, int intr_alloc_flags)
{
    FUNC3(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    FUNC3((s_rmt_driver_channels & FUNC0(channel)) == 0, "RMT driver already installed for channel", ESP_ERR_INVALID_STATE);

    esp_err_t err = ESP_OK;

    if(p_rmt_obj[channel] != NULL) {
        FUNC1(RMT_TAG, "RMT driver already installed");
        return ESP_ERR_INVALID_STATE;
    }

#if !CONFIG_SPIRAM_USE_MALLOC
    p_rmt_obj[channel] = (rmt_obj_t*) FUNC7(sizeof(rmt_obj_t));
#else
    if( !(intr_alloc_flags & ESP_INTR_FLAG_IRAM) ) {
        p_rmt_obj[channel] = (rmt_obj_t*) malloc(sizeof(rmt_obj_t));
    } else {
        p_rmt_obj[channel] = (rmt_obj_t*) heap_caps_calloc(1, sizeof(rmt_obj_t), MALLOC_CAP_INTERNAL|MALLOC_CAP_8BIT);
    }
#endif

    if(p_rmt_obj[channel] == NULL) {
        FUNC2(RMT_TAG, "RMT driver malloc error");
        return ESP_ERR_NO_MEM;
    }
    FUNC8(p_rmt_obj[channel], 0, sizeof(rmt_obj_t));

    p_rmt_obj[channel]->tx_len_rem = 0;
    p_rmt_obj[channel]->tx_data = NULL;
    p_rmt_obj[channel]->channel = channel;
    p_rmt_obj[channel]->tx_offset = 0;
    p_rmt_obj[channel]->tx_sub_len = 0;
    p_rmt_obj[channel]->wait_done = false;
    p_rmt_obj[channel]->translator = false;
    p_rmt_obj[channel]->sample_to_rmt = NULL;
    if(p_rmt_obj[channel]->tx_sem == NULL) {
#if !CONFIG_SPIRAM_USE_MALLOC
        p_rmt_obj[channel]->tx_sem = FUNC14();
#else
        p_rmt_obj[channel]->intr_alloc_flags = intr_alloc_flags;
        if( !(intr_alloc_flags & ESP_INTR_FLAG_IRAM) ) {
            p_rmt_obj[channel]->tx_sem = xSemaphoreCreateBinary();
        } else {
            p_rmt_obj[channel]->tx_sem = xSemaphoreCreateBinaryStatic(&p_rmt_obj[channel]->tx_sem_buffer);
        }
#endif
        FUNC16(p_rmt_obj[channel]->tx_sem);
    }
    if(p_rmt_obj[channel]->rx_buf == NULL && rx_buf_size > 0) {
        p_rmt_obj[channel]->rx_buf = FUNC13(rx_buf_size, RINGBUF_TYPE_NOSPLIT);
        FUNC11(channel, 1);
        FUNC10(channel, 1);
    }

    FUNC4(&rmt_driver_isr_lock);

    if(s_rmt_driver_channels == 0) { // first RMT channel using driver
        err = FUNC9(rmt_driver_isr_default, NULL, intr_alloc_flags, &s_rmt_driver_intr_handle);
    }
    if (err == ESP_OK) {
        s_rmt_driver_channels |= FUNC0(channel);
        FUNC12(channel, 1);
    }

    FUNC5(&rmt_driver_isr_lock);

    return err;
}
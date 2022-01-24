#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int intr_alloc_flags; int tx_len_rem; int tx_sub_len; int wait_done; int /*<<< orphan*/  tx_sem; scalar_t__ tx_offset; int /*<<< orphan*/  const* tx_data; } ;
typedef  TYPE_5__ rmt_obj_t ;
typedef  int /*<<< orphan*/  rmt_item32_t ;
typedef  size_t rmt_channel_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_15__ {TYPE_2__* conf_ch; } ;
struct TYPE_14__ {TYPE_4__* chan; } ;
struct TYPE_12__ {TYPE_3__* data32; } ;
struct TYPE_11__ {scalar_t__ val; } ;
struct TYPE_9__ {int mem_size; } ;
struct TYPE_10__ {TYPE_1__ conf0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int ESP_INTR_FLAG_IRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_8__ RMT ; 
 TYPE_7__ RMTMEM ; 
 int /*<<< orphan*/  RMT_ADDR_ERROR_STR ; 
 int /*<<< orphan*/  RMT_CHANNEL_ERROR_STR ; 
 size_t RMT_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RMT_DRIVER_ERROR_STR ; 
 int /*<<< orphan*/  RMT_DRIVER_LENGTH_ERROR_STR ; 
 int RMT_MEM_ITEM_NUM ; 
 int /*<<< orphan*/  RMT_PSRAM_BUFFER_WARN_STR ; 
 int /*<<< orphan*/  RMT_TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_5__** p_rmt_obj ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int,int) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC9(rmt_channel_t channel, const rmt_item32_t* rmt_item, int item_num, bool wait_tx_done)
{
    FUNC1(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    FUNC1(p_rmt_obj[channel] != NULL, RMT_DRIVER_ERROR_STR, ESP_FAIL);
    FUNC1(rmt_item != NULL, RMT_ADDR_ERROR_STR, ESP_FAIL);
    FUNC1(item_num > 0, RMT_DRIVER_LENGTH_ERROR_STR, ESP_ERR_INVALID_ARG);
#if CONFIG_SPIRAM_USE_MALLOC
    if( p_rmt_obj[channel]->intr_alloc_flags & ESP_INTR_FLAG_IRAM ) {
        if( !esp_ptr_internal(rmt_item) ) {
            ESP_LOGE(RMT_TAG, RMT_PSRAM_BUFFER_WARN_STR);
            return ESP_ERR_INVALID_ARG;
        }
    }
#endif
    rmt_obj_t* p_rmt = p_rmt_obj[channel];
    int block_num = RMT.conf_ch[channel].conf0.mem_size;
    int item_block_len = block_num * RMT_MEM_ITEM_NUM;
    int item_sub_len = block_num * RMT_MEM_ITEM_NUM / 2;
    int len_rem = item_num;
    FUNC8(p_rmt->tx_sem, portMAX_DELAY);
    // fill the memory block first
    if(item_num >= item_block_len) {
        FUNC3(channel, rmt_item, item_block_len, 0);
        len_rem -= item_block_len;
        FUNC4(channel, false);
        FUNC5(channel, 1, item_sub_len);
        p_rmt->tx_data = rmt_item + item_block_len;
        p_rmt->tx_len_rem = len_rem;
        p_rmt->tx_offset = 0;
        p_rmt->tx_sub_len = item_sub_len;
    } else {
        FUNC3(channel, rmt_item, len_rem, 0);
        RMTMEM.chan[channel].data32[len_rem].val = 0;
        p_rmt->tx_len_rem = 0;
    }
    FUNC6(channel, true);
    p_rmt->wait_done = wait_tx_done;
    if(wait_tx_done) {
        FUNC8(p_rmt->tx_sem, portMAX_DELAY);
        FUNC7(p_rmt->tx_sem);
    }
    return ESP_OK;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filter_en; int filter_ticks_thresh; int idle_threshold; } ;
typedef TYPE_1__ rmt_rx_config_t ;
typedef int rmt_item32_t ;
struct TYPE_5__ {int mem_block_num; int channel; TYPE_1__ rx_config; int rmt_mode; int clk_div; int gpio_num; } ;
typedef TYPE_2__ rmt_config_t ;


 int DATA_ITEM_NUM ;
 int RMT_CLK_DIV ;
 int RMT_ITEM32_TIMEOUT_US ;
 int RMT_MODE_RX ;
 int RMT_RX_CHANNEL ;
 int RMT_RX_GPIO_NUM ;
 int RMT_TICK_10_US ;
 int RMT_TX_DATA_NUM ;
 int rmt_config (TYPE_2__*) ;
 int rmt_driver_install (int ,int,int ) ;

__attribute__((used)) static void rx_init(void)
{
    rmt_rx_config_t rx_cfg = {
        .filter_en = 1,
        .filter_ticks_thresh = 100,
        .idle_threshold = RMT_ITEM32_TIMEOUT_US / 10 * (RMT_TICK_10_US),
    };
    rmt_config_t rmt_rx = {
        .channel = RMT_RX_CHANNEL,
        .gpio_num = RMT_RX_GPIO_NUM,
        .clk_div = RMT_CLK_DIV,
        .mem_block_num = 1,
        .rmt_mode = RMT_MODE_RX,
        .rx_config = rx_cfg,
    };
    rmt_config(&rmt_rx);
    rmt_driver_install(rmt_rx.channel, (sizeof(rmt_item32_t) * DATA_ITEM_NUM * (RMT_TX_DATA_NUM+6)), 0);
}

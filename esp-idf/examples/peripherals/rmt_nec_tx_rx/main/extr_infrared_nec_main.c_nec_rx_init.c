
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filter_en; int filter_ticks_thresh; int idle_threshold; } ;
struct TYPE_5__ {int mem_block_num; int channel; TYPE_1__ rx_config; int rmt_mode; int clk_div; int gpio_num; } ;
typedef TYPE_2__ rmt_config_t ;


 int RMT_CLK_DIV ;
 int RMT_MODE_RX ;
 int RMT_RX_CHANNEL ;
 int RMT_RX_GPIO_NUM ;
 int RMT_TICK_10_US ;
 int rmt_config (TYPE_2__*) ;
 int rmt_driver_install (int ,int,int ) ;
 int rmt_item32_tIMEOUT_US ;

__attribute__((used)) static void nec_rx_init(void)
{
    rmt_config_t rmt_rx;
    rmt_rx.channel = RMT_RX_CHANNEL;
    rmt_rx.gpio_num = RMT_RX_GPIO_NUM;
    rmt_rx.clk_div = RMT_CLK_DIV;
    rmt_rx.mem_block_num = 1;
    rmt_rx.rmt_mode = RMT_MODE_RX;
    rmt_rx.rx_config.filter_en = 1;
    rmt_rx.rx_config.filter_ticks_thresh = 100;
    rmt_rx.rx_config.idle_threshold = rmt_item32_tIMEOUT_US / 10 * (RMT_TICK_10_US);
    rmt_config(&rmt_rx);
    rmt_driver_install(rmt_rx.channel, 1000, 0);
}

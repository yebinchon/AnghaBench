
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loop_en; int carrier_duty_percent; int carrier_freq_hz; int carrier_level; int idle_output_en; int idle_level; int carrier_en; } ;
typedef TYPE_1__ rmt_tx_config_t ;
struct TYPE_5__ {int mem_block_num; int channel; int rmt_mode; TYPE_1__ tx_config; int clk_div; int gpio_num; } ;
typedef TYPE_2__ rmt_config_t ;


 int RMT_CLK_DIV ;
 int RMT_TX_CARRIER_EN ;
 int RMT_TX_CHANNEL ;
 int RMT_TX_GPIO_NUM ;
 int rmt_config (TYPE_2__*) ;
 int rmt_driver_install (int ,int ,int ) ;

__attribute__((used)) static void tx_init(void)
{

    rmt_tx_config_t tx_cfg = {
        .loop_en = 0,
        .carrier_duty_percent = 50,
        .carrier_freq_hz = 38000,
        .carrier_level = 1,
        .carrier_en = RMT_TX_CARRIER_EN,
        .idle_level = 0,
        .idle_output_en = 1,
    };
    rmt_config_t rmt_tx = {
        .channel = RMT_TX_CHANNEL,
        .gpio_num = RMT_TX_GPIO_NUM,
        .mem_block_num = 1,
        .clk_div = RMT_CLK_DIV,
        .tx_config = tx_cfg,
        .rmt_mode = 0,
    };
    rmt_config(&rmt_tx);
    rmt_driver_install(rmt_tx.channel, 0, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* ext_regs; } ;
typedef TYPE_6__ emac_hal_context_t ;
struct TYPE_11__ {scalar_t__ h_div_num; scalar_t__ div_num; } ;
struct TYPE_10__ {int clk_sel; } ;
struct TYPE_9__ {int mii_clk_rx_en; int mii_clk_tx_en; int ext_en; int int_en; } ;
struct TYPE_8__ {int phy_intf_sel; } ;
struct TYPE_12__ {TYPE_4__ ex_clkout_conf; TYPE_3__ ex_oscclk_conf; TYPE_2__ ex_clk_ctrl; TYPE_1__ ex_phyinf_conf; } ;


 int FUNC_GPIO0_CLK_OUT1 ;
 int FUNC_GPIO0_EMAC_TX_CLK ;
 int FUNC_GPIO16_EMAC_CLK_OUT ;
 int FUNC_GPIO17_EMAC_CLK_OUT_180 ;
 int FUNC_GPIO19_EMAC_TXD0 ;
 int FUNC_GPIO21_EMAC_TX_EN ;
 int FUNC_GPIO22_EMAC_TXD1 ;
 int FUNC_GPIO25_EMAC_RXD0 ;
 int FUNC_GPIO26_EMAC_RXD1 ;
 int FUNC_GPIO27_EMAC_RX_DV ;
 int * GPIO_PIN_MUX_REG ;
 int PERIPHS_IO_MUX_GPIO0_U ;
 int PERIPHS_IO_MUX_GPIO16_U ;
 int PERIPHS_IO_MUX_GPIO17_U ;
 int PERIPHS_IO_MUX_GPIO19_U ;
 int PERIPHS_IO_MUX_GPIO21_U ;
 int PERIPHS_IO_MUX_GPIO22_U ;
 int PERIPHS_IO_MUX_GPIO25_U ;
 int PERIPHS_IO_MUX_GPIO26_U ;
 int PERIPHS_IO_MUX_GPIO27_U ;
 int PIN_CTRL ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int PIN_INPUT_DISABLE (int ) ;
 int PIN_INPUT_ENABLE (int ) ;
 int REG_WRITE (int ,int) ;
 int emac_config_apll_clock () ;

void emac_hal_lowlevel_init(emac_hal_context_t *hal)
{


    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO21_U, FUNC_GPIO21_EMAC_TX_EN);
    PIN_INPUT_DISABLE(GPIO_PIN_MUX_REG[21]);

    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO19_U, FUNC_GPIO19_EMAC_TXD0);
    PIN_INPUT_DISABLE(GPIO_PIN_MUX_REG[19]);

    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO22_U, FUNC_GPIO22_EMAC_TXD1);
    PIN_INPUT_DISABLE(GPIO_PIN_MUX_REG[22]);

    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO25_U, FUNC_GPIO25_EMAC_RXD0);
    PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[25]);

    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO26_U, FUNC_GPIO26_EMAC_RXD1);
    PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[26]);

    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO27_U, FUNC_GPIO27_EMAC_RX_DV);
    PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[27]);
}

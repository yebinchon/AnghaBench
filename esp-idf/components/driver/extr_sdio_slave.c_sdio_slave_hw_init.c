
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_23__ {int func; int d3_gpio; int d2_gpio; int d1_gpio; int d0_gpio; int cmd_gpio; int clk_gpio; } ;
typedef TYPE_7__ sdio_slave_slot_info_t ;
struct TYPE_24__ {int flags; int timing; } ;
typedef TYPE_8__ sdio_slave_config_t ;
typedef int esp_err_t ;
struct TYPE_22__ {int frhost_bit0; int frhost_bit1; int frhost_bit2; int frhost_bit3; int frhost_bit4; int frhost_bit5; int frhost_bit6; int frhost_bit7; scalar_t__ val; } ;
struct TYPE_21__ {int frc_sdio20; int frc_sdio11; int frc_pos_samp; int frc_neg_samp; } ;
struct TYPE_20__ {int highspeed_enable; int sdio_ver; } ;
struct TYPE_19__ {int slc0_token_no_replace; } ;
struct TYPE_18__ {scalar_t__ slc0_len_auto_clr; scalar_t__ slc0_tx_stitch_en; scalar_t__ slc0_rx_stitch_en; } ;
struct TYPE_17__ {int slc0_rx_auto_wrback; scalar_t__ slc0_tx_loop_test; scalar_t__ slc0_rx_loop_test; scalar_t__ slc0_token_auto_clr; } ;
struct TYPE_16__ {TYPE_4__ cfg_data1; } ;
struct TYPE_15__ {TYPE_5__ conf; } ;
struct TYPE_14__ {TYPE_6__ slc0_int_ena; TYPE_3__ rx_dscr_conf; TYPE_2__ conf1; TYPE_1__ conf0; } ;


 int ESP_OK ;
 TYPE_13__ HINF ;
 TYPE_12__ HOST ;
 int PERIPH_SDIO_SLAVE_MODULE ;
 int SDIO_SLAVE_FLAG_DAT2_DISABLED ;
 int SDIO_SLAVE_FLAG_HOST_INTR_DISABLED ;
 int SDIO_SLAVE_FLAG_INTERNAL_PULLUP ;




 TYPE_11__ SLC ;
 int configure_pin (int ,int ,int) ;
 int periph_module_enable (int ) ;
 int periph_module_reset (int ) ;
 TYPE_7__* sdio_slave_slot_info ;

__attribute__((used)) static inline esp_err_t sdio_slave_hw_init(sdio_slave_config_t *config)
{

    SLC.slc0_int_ena.val = 0;


    const sdio_slave_slot_info_t *slot = &sdio_slave_slot_info[1];

    bool pullup = config->flags & SDIO_SLAVE_FLAG_INTERNAL_PULLUP;
    configure_pin(slot->clk_gpio, slot->func, 0);
    configure_pin(slot->cmd_gpio, slot->func, pullup);
    configure_pin(slot->d0_gpio, slot->func, pullup);
    if ((config->flags & SDIO_SLAVE_FLAG_HOST_INTR_DISABLED)==0) {
        configure_pin(slot->d1_gpio, slot->func, pullup);
    }
    if ((config->flags & SDIO_SLAVE_FLAG_DAT2_DISABLED)==0) {
       configure_pin(slot->d2_gpio, slot->func, pullup);
    }
    configure_pin(slot->d3_gpio, slot->func, pullup);


    periph_module_reset(PERIPH_SDIO_SLAVE_MODULE);
    periph_module_enable(PERIPH_SDIO_SLAVE_MODULE);

    SLC.conf0.slc0_rx_auto_wrback = 1;
    SLC.conf0.slc0_token_auto_clr = 0;
    SLC.conf0.slc0_rx_loop_test = 0;
    SLC.conf0.slc0_tx_loop_test = 0;

    SLC.conf1.slc0_rx_stitch_en = 0;
    SLC.conf1.slc0_tx_stitch_en = 0;
    SLC.conf1.slc0_len_auto_clr = 0;

    SLC.rx_dscr_conf.slc0_token_no_replace = 1;
    HINF.cfg_data1.highspeed_enable = 1;
    HINF.cfg_data1.sdio_ver = 0x232;

    switch(config->timing) {
        case 128:
            HOST.conf.frc_sdio20 = 0x1f;
            HOST.conf.frc_sdio11 = 0;
            HOST.conf.frc_pos_samp = 0x1f;
            HOST.conf.frc_neg_samp = 0;
            break;
        case 129:
            HOST.conf.frc_sdio20 = 0x1f;
            HOST.conf.frc_sdio11 = 0;
            HOST.conf.frc_pos_samp = 0;
            HOST.conf.frc_neg_samp = 0x1f;
            break;
        case 130:
            HOST.conf.frc_sdio20 = 0;
            HOST.conf.frc_sdio11 = 0x1f;
            HOST.conf.frc_pos_samp = 0x1f;
            HOST.conf.frc_neg_samp = 0;
            break;
        case 131:
            HOST.conf.frc_sdio20 = 0;
            HOST.conf.frc_sdio11 = 0x1f;
            HOST.conf.frc_pos_samp = 0;
            HOST.conf.frc_neg_samp = 0x1f;
            break;
    }

    SLC.slc0_int_ena.frhost_bit0 = 1;
    SLC.slc0_int_ena.frhost_bit1 = 1;
    SLC.slc0_int_ena.frhost_bit2 = 1;
    SLC.slc0_int_ena.frhost_bit3 = 1;
    SLC.slc0_int_ena.frhost_bit4 = 1;
    SLC.slc0_int_ena.frhost_bit5 = 1;
    SLC.slc0_int_ena.frhost_bit6 = 1;
    SLC.slc0_int_ena.frhost_bit7 = 1;

    return ESP_OK;
}

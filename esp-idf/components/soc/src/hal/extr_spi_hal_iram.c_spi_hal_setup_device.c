
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cs_pin_id; int cs_hold; int cs_setup; int sio; int half_duplex; int mode; int tx_lsbfirst; int rx_lsbfirst; TYPE_1__* timing_conf; int positive_cs; int as_cs; int * hw; } ;
typedef TYPE_2__ spi_hal_context_t ;
typedef int spi_dev_t ;
struct TYPE_4__ {int clock_reg; } ;


 int spi_ll_master_select_cs (int *,int ) ;
 int spi_ll_master_set_cksel (int *,int ,int ) ;
 int spi_ll_master_set_clock_by_reg (int *,int *) ;
 int spi_ll_master_set_cs_hold (int *,int ) ;
 int spi_ll_master_set_cs_setup (int *,int ) ;
 int spi_ll_master_set_mode (int *,int ) ;
 int spi_ll_master_set_pos_cs (int *,int ,int ) ;
 int spi_ll_set_half_duplex (int *,int ) ;
 int spi_ll_set_rx_lsbfirst (int *,int ) ;
 int spi_ll_set_sio_mode (int *,int ) ;
 int spi_ll_set_tx_lsbfirst (int *,int ) ;

void spi_hal_setup_device(const spi_hal_context_t *hal)
{

    spi_dev_t *hw = hal->hw;



    spi_ll_master_set_pos_cs(hw, hal->cs_pin_id, hal->positive_cs);
    spi_ll_master_set_clock_by_reg(hw, &hal->timing_conf->clock_reg);

    spi_ll_set_rx_lsbfirst(hw, hal->rx_lsbfirst);
    spi_ll_set_tx_lsbfirst(hw, hal->tx_lsbfirst);
    spi_ll_master_set_mode(hw, hal->mode);

    spi_ll_set_half_duplex(hw, hal->half_duplex);
    spi_ll_set_sio_mode(hw, hal->sio);

    spi_ll_master_set_cs_setup(hw, hal->cs_setup);
    spi_ll_master_set_cs_hold(hw, hal->cs_hold);
    spi_ll_master_select_cs(hw, hal->cs_pin_id);
}

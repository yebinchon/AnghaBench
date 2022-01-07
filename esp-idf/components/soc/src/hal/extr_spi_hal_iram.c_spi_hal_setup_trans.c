
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int mode; int cmd_bits; int addr_bits; scalar_t__ cs_setup; int tx_lsbfirst; int addr; int cmd; scalar_t__ half_duplex; int tx_bitlen; int rx_bitlen; TYPE_1__* timing_conf; scalar_t__ dummy_bits; int no_compensate; scalar_t__ rcv_buffer; int io_mode; int * hw; } ;
typedef TYPE_2__ spi_hal_context_t ;
typedef int spi_dev_t ;
struct TYPE_4__ {int timing_dummy; int timing_miso_delay; } ;


 int assert (int) ;
 int spi_ll_clear_int_stat (int *) ;
 scalar_t__ spi_ll_get_running_cmd (int *) ;
 int spi_ll_master_set_io_mode (int *,int ) ;
 int spi_ll_set_addr_bitlen (int *,int) ;
 int spi_ll_set_address (int *,int ,int,int ) ;
 int spi_ll_set_command (int *,int ,int,int ) ;
 int spi_ll_set_command_bitlen (int *,int) ;
 int spi_ll_set_dummy (int *,scalar_t__) ;
 int spi_ll_set_miso_bitlen (int *,int ) ;
 int spi_ll_set_miso_delay (int *,int,int) ;
 int spi_ll_set_mosi_bitlen (int *,int ) ;

void spi_hal_setup_trans(const spi_hal_context_t *hal)
{
    spi_dev_t *hw = hal->hw;


    spi_ll_clear_int_stat(hal->hw);

    assert(spi_ll_get_running_cmd(hw) == 0);

    spi_ll_master_set_io_mode(hw, hal->io_mode);

    int extra_dummy = 0;

    if (hal->rcv_buffer && !hal->no_compensate && hal->half_duplex) {
        extra_dummy = hal->timing_conf->timing_dummy;
    }



    spi_ll_set_dummy(hw, extra_dummy + hal->dummy_bits);

    uint32_t miso_delay_num = 0;
    uint32_t miso_delay_mode = 0;
    if (hal->timing_conf->timing_miso_delay < 0) {

        switch (hal->mode) {
        case 0:
            miso_delay_mode = 2;
            break;
        case 1:
            miso_delay_mode = 1;
            break;
        case 2:
            miso_delay_mode = 1;
            break;
        case 3:
            miso_delay_mode = 2;
            break;
        }
        miso_delay_num = 0;
    } else {

        miso_delay_num = extra_dummy ? hal->timing_conf->timing_miso_delay : 0;
        miso_delay_mode = 0;
    }
    spi_ll_set_miso_delay(hw, miso_delay_mode, miso_delay_num);

    spi_ll_set_mosi_bitlen(hw, hal->tx_bitlen);

    if (hal->half_duplex) {
        spi_ll_set_miso_bitlen(hw, hal->rx_bitlen);
    } else {

        spi_ll_set_miso_bitlen(hw, hal->tx_bitlen);
    }


    int cmdlen = hal->cmd_bits;
    int addrlen = hal->addr_bits;
    if (!hal->half_duplex && hal->cs_setup != 0) {



        cmdlen = 0;
        addrlen = 0;
    }

    spi_ll_set_addr_bitlen(hw, addrlen);
    spi_ll_set_command_bitlen(hw, cmdlen);

    spi_ll_set_command(hw, hal->cmd, cmdlen, hal->tx_lsbfirst);
    spi_ll_set_address(hw, hal->addr, addrlen, hal->tx_lsbfirst);
}

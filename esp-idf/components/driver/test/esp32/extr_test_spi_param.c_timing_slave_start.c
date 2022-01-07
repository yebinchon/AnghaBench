
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int test_size; scalar_t__ dup; int slave_dma_chan; int mode; int slave_iomux; } ;
typedef TYPE_3__ spitest_param_set_t ;
struct TYPE_17__ {TYPE_2__* master_trans; TYPE_1__* slave_trans; } ;
typedef TYPE_4__ spitest_context_t ;
struct TYPE_18__ {int spics_io_num; int mode; } ;
typedef TYPE_5__ spi_slave_interface_config_t ;
struct TYPE_19__ {int quadhd_io_num; int sclk_io_num; int mosi_io_num; int miso_io_num; } ;
typedef TYPE_6__ spi_bus_config_t ;
struct TYPE_15__ {int length; int rxlength; int rx_buffer; } ;
struct TYPE_14__ {int start; } ;


 scalar_t__ FULL_DUPLEX ;
 scalar_t__ HALF_DUPLEX_MISO ;
 int HSPI_IOMUX_PIN_NUM_CLK ;
 TYPE_6__ SPI_BUS_TEST_DEFAULT_CONFIG () ;
 TYPE_5__ SPI_SLAVE_TEST_DEFAULT_CONFIG () ;
 int TEST_ESP_OK (int ) ;
 int TEST_SLAVE_HOST ;
 int VSPI_IOMUX_PIN_NUM_CLK ;
 int VSPI_IOMUX_PIN_NUM_CS ;
 int VSPI_IOMUX_PIN_NUM_MISO ;
 int VSPI_IOMUX_PIN_NUM_MOSI ;
 int memcpy (int ,int ,int) ;
 int slave_pull_up (TYPE_6__*,int ) ;
 int spi_slave_initialize (int ,TYPE_6__*,TYPE_5__*,int ) ;

__attribute__((used)) static void timing_slave_start(int speed, const spitest_param_set_t* pset, spitest_context_t *context)
{

    spi_bus_config_t slv_buscfg=SPI_BUS_TEST_DEFAULT_CONFIG();
    slv_buscfg.miso_io_num = VSPI_IOMUX_PIN_NUM_MISO;
    slv_buscfg.mosi_io_num = VSPI_IOMUX_PIN_NUM_MOSI;
    slv_buscfg.sclk_io_num = VSPI_IOMUX_PIN_NUM_CLK;

    if (!pset->slave_iomux) slv_buscfg.quadhd_io_num = HSPI_IOMUX_PIN_NUM_CLK;
    spi_slave_interface_config_t slvcfg=SPI_SLAVE_TEST_DEFAULT_CONFIG();
    slvcfg.spics_io_num = VSPI_IOMUX_PIN_NUM_CS;
    slvcfg.mode = pset->mode;

    slave_pull_up(&slv_buscfg, slvcfg.spics_io_num);

    TEST_ESP_OK(spi_slave_initialize(TEST_SLAVE_HOST, &slv_buscfg, &slvcfg, pset->slave_dma_chan));


    for (int i = 0; i < pset->test_size; i++) {
        if (pset->dup==FULL_DUPLEX) {
            memcpy(context->master_trans[i].rx_buffer, context->slave_trans[i].start, (context->master_trans[i].length+7)/8);
        } else if (pset->dup==HALF_DUPLEX_MISO) {
            memcpy(context->master_trans[i].rx_buffer, context->slave_trans[i].start, (context->master_trans[i].rxlength+7)/8);
        }
    }
}

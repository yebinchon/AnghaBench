
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_17__ {scalar_t__ dup; int master_limit; int test_size; int master_dma_chan; int slave_tv_ns; int mode; int master_iomux; } ;
typedef TYPE_4__ spitest_param_set_t ;
struct TYPE_16__ {int data_received; } ;
struct TYPE_18__ {int master_rxbuf; TYPE_3__ slave_context; TYPE_2__* master_trans; TYPE_1__* slave_trans; } ;
typedef TYPE_5__ spitest_context_t ;
struct TYPE_19__ {int cs_ena_pretrans; int cs_ena_posttrans; int clock_speed_hz; int flags; int input_delay_ns; int mode; int spics_io_num; } ;
typedef TYPE_6__ spi_device_interface_config_t ;
typedef int spi_device_handle_t ;
struct TYPE_20__ {int quadhd_io_num; int sclk_io_num; int mosi_io_num; int miso_io_num; } ;
typedef TYPE_7__ spi_bus_config_t ;
struct TYPE_15__ {int length; int rxlength; int * tx_buffer; } ;
struct TYPE_14__ {scalar_t__ start; } ;


 scalar_t__ HALF_DUPLEX_MISO ;
 scalar_t__ HALF_DUPLEX_MOSI ;
 int HSPI_IOMUX_PIN_NUM_CLK ;
 int HSPI_IOMUX_PIN_NUM_CS ;
 int HSPI_IOMUX_PIN_NUM_MISO ;
 int HSPI_IOMUX_PIN_NUM_MOSI ;
 TYPE_7__ SPI_BUS_TEST_DEFAULT_CONFIG () ;
 int SPI_DEVICE_HALFDUPLEX ;
 int SPI_DEVICE_NO_DUMMY ;
 TYPE_6__ SPI_DEVICE_TEST_DEFAULT_CONFIG () ;
 int TEST_ESP_OK (int ) ;
 int TEST_SPI_HOST ;
 int VSPI_IOMUX_PIN_NUM_MISO ;
 int memcpy (int*,int *,int) ;
 int memset (int ,int,int) ;
 int portMAX_DELAY ;
 int spi_bus_add_device (int ,TYPE_6__*,int *) ;
 int spi_bus_initialize (int ,TYPE_7__*,int ) ;
 int xRingbufferSend (int ,int *,int,int ) ;

__attribute__((used)) static void test_master_start(spi_device_handle_t *spi, int freq, const spitest_param_set_t* pset, spitest_context_t* context)
{

    spi_bus_config_t buspset=SPI_BUS_TEST_DEFAULT_CONFIG();
    buspset.miso_io_num = HSPI_IOMUX_PIN_NUM_MISO;
    buspset.mosi_io_num = HSPI_IOMUX_PIN_NUM_MOSI;
    buspset.sclk_io_num = HSPI_IOMUX_PIN_NUM_CLK;

    if (!pset->master_iomux) buspset.quadhd_io_num = VSPI_IOMUX_PIN_NUM_MISO;
    spi_device_interface_config_t devpset=SPI_DEVICE_TEST_DEFAULT_CONFIG();
    devpset.spics_io_num = HSPI_IOMUX_PIN_NUM_CS;
    devpset.mode = pset->mode;
    const int cs_pretrans_max = 15;
    if (pset->dup==HALF_DUPLEX_MISO) {
        devpset.cs_ena_pretrans = cs_pretrans_max;
        devpset.flags |= SPI_DEVICE_HALFDUPLEX;
    } else if (pset->dup == HALF_DUPLEX_MOSI) {
        devpset.cs_ena_pretrans = cs_pretrans_max;
        devpset.flags |= SPI_DEVICE_NO_DUMMY;
    } else {
        devpset.cs_ena_pretrans = cs_pretrans_max;
    }
    const int cs_posttrans_max = 15;
    devpset.cs_ena_posttrans = cs_posttrans_max;
    devpset.input_delay_ns = pset->slave_tv_ns;
    devpset.clock_speed_hz = freq;
    if (pset->master_limit != 0 && freq > pset->master_limit) devpset.flags |= SPI_DEVICE_NO_DUMMY;
    TEST_ESP_OK(spi_bus_initialize(TEST_SPI_HOST, &buspset, pset->master_dma_chan));
    TEST_ESP_OK(spi_bus_add_device(TEST_SPI_HOST, &devpset, spi));


    for (int i = 0; i < pset->test_size; i ++) {






        uint8_t slave_buffer[320+8];
        int length;
        if (pset->dup!=HALF_DUPLEX_MISO) {
            length = context->master_trans[i].length;
        } else {
            length = context->master_trans[i].rxlength;
        }
        uint32_t* ptr = (uint32_t*)slave_buffer;
        ptr[0] = length;
        ptr[1] = (uint32_t)context->slave_trans[i].start;
        if (context->master_trans[i].tx_buffer!=((void*)0)) {
            memcpy(ptr+2, context->master_trans[i].tx_buffer, (context->master_trans[i].length+7)/8);
        }

        xRingbufferSend(context->slave_context.data_received, slave_buffer, 8+(length+7)/8, portMAX_DELAY);
    }
    memset(context->master_rxbuf, 0x66, sizeof(context->master_rxbuf));
}

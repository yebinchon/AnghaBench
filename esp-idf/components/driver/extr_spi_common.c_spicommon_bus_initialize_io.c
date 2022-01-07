
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int spi_host_device_t ;
struct TYPE_5__ {size_t sclk_io_num; size_t quadwp_io_num; size_t quadhd_io_num; size_t mosi_io_num; size_t miso_io_num; } ;
typedef TYPE_1__ spi_bus_config_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int spiclk_in; int spiclk_out; int spihd_in; int spihd_out; int spiwp_in; int spiwp_out; int spiq_in; int spiq_out; int spid_in; int spid_out; int func; } ;


 int DPORT_SET_PERI_REG_BITS (int ,int,int,int) ;
 int DPORT_SET_PERI_REG_MASK (int ,int ) ;
 int DPORT_SPI_DMA_CHAN_SEL_REG ;
 int DPORT_SPI_SHARED_DMA_SEL_M ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int FUNC_GPIO ;
 scalar_t__ GPIO_IS_VALID_OUTPUT_GPIO (size_t) ;
 int GPIO_MODE_INPUT ;
 int GPIO_MODE_INPUT_OUTPUT ;
 int * GPIO_PIN_MUX_REG ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int PIN_INPUT_ENABLE (int ) ;
 int SPICOMMON_BUSFLAG_DUAL ;
 int SPICOMMON_BUSFLAG_IOMUX_PINS ;
 int SPICOMMON_BUSFLAG_MASTER ;
 int SPICOMMON_BUSFLAG_MISO ;
 int SPICOMMON_BUSFLAG_MOSI ;
 int SPICOMMON_BUSFLAG_SCLK ;
 int SPICOMMON_BUSFLAG_WPHD ;
 int SPI_CHECK (int,char*,int ) ;
 int SPI_CHECK_PIN (size_t,char*,int const) ;
 int SPI_TAG ;
 int VSPI_HOST ;
 int bus_uses_iomux_pins (int,TYPE_1__ const*) ;
 int gpio_iomux_in (size_t,int ) ;
 int gpio_iomux_out (size_t,int ,int) ;
 int gpio_matrix_in (size_t,int ,int) ;
 int gpio_matrix_out (size_t,int ,int,int) ;
 int gpio_set_direction (size_t,int ) ;
 TYPE_3__* spi_periph_signal ;

esp_err_t spicommon_bus_initialize_io(spi_host_device_t host, const spi_bus_config_t *bus_config, int dma_chan, uint32_t flags, uint32_t* flags_o)
{
    uint32_t temp_flag=0;

    bool miso_need_output;
    bool mosi_need_output;
    bool sclk_need_output;
    if ((flags&SPICOMMON_BUSFLAG_MASTER) != 0) {

        miso_need_output = ((flags&SPICOMMON_BUSFLAG_DUAL) != 0) ? 1 : 0;
        mosi_need_output = 1;
        sclk_need_output = 1;
    } else {

        miso_need_output = 1;
        mosi_need_output = ((flags&SPICOMMON_BUSFLAG_DUAL) != 0) ? 1 : 0;
        sclk_need_output = 0;
    }

    const bool wp_need_output = 1;
    const bool hd_need_output = 1;


    if (bus_config->sclk_io_num>=0) {
        temp_flag |= SPICOMMON_BUSFLAG_SCLK;
        SPI_CHECK_PIN(bus_config->sclk_io_num, "sclk", sclk_need_output);
    }
    if (bus_config->quadwp_io_num>=0) {
        SPI_CHECK_PIN(bus_config->quadwp_io_num, "wp", wp_need_output);
    }
    if (bus_config->quadhd_io_num>=0) {
        SPI_CHECK_PIN(bus_config->quadhd_io_num, "hd", hd_need_output);
    }

    if (bus_config->quadhd_io_num >= 0 && bus_config->quadwp_io_num >= 0) temp_flag |= SPICOMMON_BUSFLAG_WPHD;
    if (bus_config->mosi_io_num >= 0) {
        temp_flag |= SPICOMMON_BUSFLAG_MOSI;
        SPI_CHECK_PIN(bus_config->mosi_io_num, "mosi", mosi_need_output);
    }
    if (bus_config->miso_io_num>=0) {
        temp_flag |= SPICOMMON_BUSFLAG_MISO;
        SPI_CHECK_PIN(bus_config->miso_io_num, "miso", miso_need_output);
    }

    if ( (bus_config->mosi_io_num < 0 || GPIO_IS_VALID_OUTPUT_GPIO(bus_config->mosi_io_num)) &&
        (bus_config->miso_io_num < 0 || GPIO_IS_VALID_OUTPUT_GPIO(bus_config->miso_io_num)) ) {
        temp_flag |= SPICOMMON_BUSFLAG_DUAL;
    }


    bool use_iomux = bus_uses_iomux_pins(host, bus_config);
    if (use_iomux) temp_flag |= SPICOMMON_BUSFLAG_IOMUX_PINS;

    uint32_t missing_flag = flags & ~temp_flag;
    missing_flag &= ~SPICOMMON_BUSFLAG_MASTER;

    if (missing_flag != 0) {

        if (missing_flag & SPICOMMON_BUSFLAG_SCLK) ESP_LOGE(SPI_TAG, "sclk pin required.");
        if (missing_flag & SPICOMMON_BUSFLAG_MOSI) ESP_LOGE(SPI_TAG, "mosi pin required.");
        if (missing_flag & SPICOMMON_BUSFLAG_MISO) ESP_LOGE(SPI_TAG, "miso pin required.");
        if (missing_flag & SPICOMMON_BUSFLAG_DUAL) ESP_LOGE(SPI_TAG, "not both mosi and miso output capable");
        if (missing_flag & SPICOMMON_BUSFLAG_WPHD) ESP_LOGE(SPI_TAG, "both wp and hd required.");
        if (missing_flag & SPICOMMON_BUSFLAG_IOMUX_PINS) ESP_LOGE(SPI_TAG, "not using iomux pins");
        SPI_CHECK(missing_flag == 0, "not all required capabilities satisfied.", ESP_ERR_INVALID_ARG);
    }

    if (use_iomux) {


        ESP_LOGD(SPI_TAG, "SPI%d use iomux pins.", host+1);
        if (bus_config->mosi_io_num >= 0) {
            gpio_iomux_in(bus_config->mosi_io_num, spi_periph_signal[host].spid_in);





        }
        if (bus_config->miso_io_num >= 0) {
            gpio_iomux_in(bus_config->miso_io_num, spi_periph_signal[host].spiq_in);





        }
        if (bus_config->quadwp_io_num >= 0) {
            gpio_iomux_in(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_in);





        }
        if (bus_config->quadhd_io_num >= 0) {
            gpio_iomux_in(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_in);





        }
        if (bus_config->sclk_io_num >= 0) {
            gpio_iomux_in(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_in);





        }
        temp_flag |= SPICOMMON_BUSFLAG_IOMUX_PINS;
    } else {

        ESP_LOGD(SPI_TAG, "SPI%d use gpio matrix.", host+1);
        if (bus_config->mosi_io_num >= 0) {
            if (mosi_need_output || (temp_flag&SPICOMMON_BUSFLAG_DUAL)) {
                gpio_set_direction(bus_config->mosi_io_num, GPIO_MODE_INPUT_OUTPUT);
                gpio_matrix_out(bus_config->mosi_io_num, spi_periph_signal[host].spid_out, 0, 0);
            } else {
                gpio_set_direction(bus_config->mosi_io_num, GPIO_MODE_INPUT);
            }
            gpio_matrix_in(bus_config->mosi_io_num, spi_periph_signal[host].spid_in, 0);



            PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[bus_config->mosi_io_num], FUNC_GPIO);
        }
        if (bus_config->miso_io_num >= 0) {
            if (miso_need_output || (temp_flag&SPICOMMON_BUSFLAG_DUAL)) {
                gpio_set_direction(bus_config->miso_io_num, GPIO_MODE_INPUT_OUTPUT);
                gpio_matrix_out(bus_config->miso_io_num, spi_periph_signal[host].spiq_out, 0, 0);
            } else {
                gpio_set_direction(bus_config->miso_io_num, GPIO_MODE_INPUT);
            }
            gpio_matrix_in(bus_config->miso_io_num, spi_periph_signal[host].spiq_in, 0);



            PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[bus_config->miso_io_num], FUNC_GPIO);
        }
        if (bus_config->quadwp_io_num >= 0) {
            gpio_set_direction(bus_config->quadwp_io_num, GPIO_MODE_INPUT_OUTPUT);
            gpio_matrix_out(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_out, 0, 0);
            gpio_matrix_in(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_in, 0);



            PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[bus_config->quadwp_io_num], FUNC_GPIO);
        }
        if (bus_config->quadhd_io_num >= 0) {
            gpio_set_direction(bus_config->quadhd_io_num, GPIO_MODE_INPUT_OUTPUT);
            gpio_matrix_out(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_out, 0, 0);
            gpio_matrix_in(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_in, 0);



            PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[bus_config->quadhd_io_num], FUNC_GPIO);
        }
        if (bus_config->sclk_io_num >= 0) {
            if (sclk_need_output) {
                gpio_set_direction(bus_config->sclk_io_num, GPIO_MODE_INPUT_OUTPUT);
                gpio_matrix_out(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_out, 0, 0);
            } else {
                gpio_set_direction(bus_config->sclk_io_num, GPIO_MODE_INPUT);
            }
            gpio_matrix_in(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_in, 0);



            PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[bus_config->sclk_io_num], FUNC_GPIO);
        }
    }
    if (flags_o) *flags_o = temp_flag;
    return ESP_OK;
}

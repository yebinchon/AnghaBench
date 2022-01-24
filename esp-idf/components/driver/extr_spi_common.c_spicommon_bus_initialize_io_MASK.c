#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int spi_host_device_t ;
struct TYPE_5__ {size_t sclk_io_num; size_t quadwp_io_num; size_t quadhd_io_num; size_t mosi_io_num; size_t miso_io_num; } ;
typedef  TYPE_1__ spi_bus_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {int /*<<< orphan*/  spiclk_in; int /*<<< orphan*/  spiclk_out; int /*<<< orphan*/  spihd_in; int /*<<< orphan*/  spihd_out; int /*<<< orphan*/  spiwp_in; int /*<<< orphan*/  spiwp_out; int /*<<< orphan*/  spiq_in; int /*<<< orphan*/  spiq_out; int /*<<< orphan*/  spid_in; int /*<<< orphan*/  spid_out; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_SPI_DMA_CHAN_SEL_REG ; 
 int /*<<< orphan*/  DPORT_SPI_SHARED_DMA_SEL_M ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC_GPIO ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT_OUTPUT ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int SPICOMMON_BUSFLAG_DUAL ; 
 int SPICOMMON_BUSFLAG_IOMUX_PINS ; 
 int SPICOMMON_BUSFLAG_MASTER ; 
 int SPICOMMON_BUSFLAG_MISO ; 
 int SPICOMMON_BUSFLAG_MOSI ; 
 int SPICOMMON_BUSFLAG_SCLK ; 
 int SPICOMMON_BUSFLAG_WPHD ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t,char*,int const) ; 
 int /*<<< orphan*/  SPI_TAG ; 
 int VSPI_HOST ; 
 int FUNC9 (int,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_3__* spi_periph_signal ; 

esp_err_t FUNC15(spi_host_device_t host, const spi_bus_config_t *bus_config, int dma_chan, uint32_t flags, uint32_t* flags_o)
{
    uint32_t temp_flag=0;

    bool miso_need_output;
    bool mosi_need_output;
    bool sclk_need_output;
    if ((flags&SPICOMMON_BUSFLAG_MASTER) != 0) {
        //initial for master
        miso_need_output = ((flags&SPICOMMON_BUSFLAG_DUAL) != 0) ? true : false;
        mosi_need_output = true;
        sclk_need_output = true;
    } else {
        //initial for slave
        miso_need_output = true;
        mosi_need_output = ((flags&SPICOMMON_BUSFLAG_DUAL) != 0) ? true : false;
        sclk_need_output = false;
    }

    const bool wp_need_output = true;
    const bool hd_need_output = true;

    //check pin capabilities
    if (bus_config->sclk_io_num>=0) {
        temp_flag |= SPICOMMON_BUSFLAG_SCLK;
        FUNC8(bus_config->sclk_io_num, "sclk", sclk_need_output);
    }
    if (bus_config->quadwp_io_num>=0) {
        FUNC8(bus_config->quadwp_io_num, "wp", wp_need_output);
    }
    if (bus_config->quadhd_io_num>=0) {
        FUNC8(bus_config->quadhd_io_num, "hd", hd_need_output);
    }
    //set flags for QUAD mode according to the existence of wp and hd
    if (bus_config->quadhd_io_num >= 0 && bus_config->quadwp_io_num >= 0) temp_flag |= SPICOMMON_BUSFLAG_WPHD;
    if (bus_config->mosi_io_num >= 0) {
        temp_flag |= SPICOMMON_BUSFLAG_MOSI;
        FUNC8(bus_config->mosi_io_num, "mosi", mosi_need_output);
    }
    if (bus_config->miso_io_num>=0) {
        temp_flag |= SPICOMMON_BUSFLAG_MISO;
        FUNC8(bus_config->miso_io_num, "miso", miso_need_output);
    }
    //set flags for DUAL mode according to output-capability of MOSI and MISO pins.
    if ( (bus_config->mosi_io_num < 0 || FUNC4(bus_config->mosi_io_num)) &&
        (bus_config->miso_io_num < 0 || FUNC4(bus_config->miso_io_num)) ) {
        temp_flag |= SPICOMMON_BUSFLAG_DUAL;
    }

    //check if the selected pins correspond to the iomux pins of the peripheral
    bool use_iomux = FUNC9(host, bus_config);
    if (use_iomux) temp_flag |= SPICOMMON_BUSFLAG_IOMUX_PINS;

    uint32_t missing_flag = flags & ~temp_flag;
    missing_flag &= ~SPICOMMON_BUSFLAG_MASTER;//don't check this flag

    if (missing_flag != 0) {
    //check pins existence
        if (missing_flag & SPICOMMON_BUSFLAG_SCLK) FUNC3(SPI_TAG, "sclk pin required.");
        if (missing_flag & SPICOMMON_BUSFLAG_MOSI) FUNC3(SPI_TAG, "mosi pin required.");
        if (missing_flag & SPICOMMON_BUSFLAG_MISO) FUNC3(SPI_TAG, "miso pin required.");
        if (missing_flag & SPICOMMON_BUSFLAG_DUAL) FUNC3(SPI_TAG, "not both mosi and miso output capable");
        if (missing_flag & SPICOMMON_BUSFLAG_WPHD) FUNC3(SPI_TAG, "both wp and hd required.");
        if (missing_flag & SPICOMMON_BUSFLAG_IOMUX_PINS) FUNC3(SPI_TAG, "not using iomux pins");
        FUNC7(missing_flag == 0, "not all required capabilities satisfied.", ESP_ERR_INVALID_ARG);
    }

    if (use_iomux) {
        //All SPI iomux pin selections resolve to 1, so we put that here instead of trying to figure
        //out which FUNC_GPIOx_xSPIxx to grab; they all are defined to 1 anyway.
        FUNC2(SPI_TAG, "SPI%d use iomux pins.", host+1);
        if (bus_config->mosi_io_num >= 0) {
            FUNC10(bus_config->mosi_io_num, spi_periph_signal[host].spid_in);
#if CONFIG_IDF_TARGET_ESP32
            gpio_iomux_out(bus_config->mosi_io_num, spi_periph_signal[host].func, false);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
            gpio_iomux_out(bus_config->mosi_io_num, spi_periph_signal[host].func, false);
#endif
        }
        if (bus_config->miso_io_num >= 0) {
            FUNC10(bus_config->miso_io_num, spi_periph_signal[host].spiq_in);
#if CONFIG_IDF_TARGET_ESP32
            gpio_iomux_out(bus_config->miso_io_num, spi_periph_signal[host].func, false);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
            gpio_iomux_out(bus_config->miso_io_num, spi_periph_signal[host].func, false);
#endif
        }
        if (bus_config->quadwp_io_num >= 0) {
            FUNC10(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_in);
#if CONFIG_IDF_TARGET_ESP32
            gpio_iomux_out(bus_config->quadwp_io_num, spi_periph_signal[host].func, false);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
            gpio_iomux_out(bus_config->quadwp_io_num, spi_periph_signal[host].func, false);
#endif
        }
        if (bus_config->quadhd_io_num >= 0) {
            FUNC10(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_in);
#if CONFIG_IDF_TARGET_ESP32
            gpio_iomux_out(bus_config->quadhd_io_num, spi_periph_signal[host].func, false);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
            gpio_iomux_out(bus_config->quadhd_io_num, spi_periph_signal[host].func, false);
#endif
        }
        if (bus_config->sclk_io_num >= 0) {
            FUNC10(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_in);
#if CONFIG_IDF_TARGET_ESP32
            gpio_iomux_out(bus_config->sclk_io_num, spi_periph_signal[host].func, false);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
            gpio_iomux_out(bus_config->sclk_io_num, spi_periph_signal[host].func, false);
#endif
        }
        temp_flag |= SPICOMMON_BUSFLAG_IOMUX_PINS;
    } else {
        //Use GPIO matrix
        FUNC2(SPI_TAG, "SPI%d use gpio matrix.", host+1);
        if (bus_config->mosi_io_num >= 0) {
            if (mosi_need_output || (temp_flag&SPICOMMON_BUSFLAG_DUAL)) {
                FUNC14(bus_config->mosi_io_num, GPIO_MODE_INPUT_OUTPUT);
                FUNC13(bus_config->mosi_io_num, spi_periph_signal[host].spid_out, false, false);
            } else {
                FUNC14(bus_config->mosi_io_num, GPIO_MODE_INPUT);
            }
            FUNC12(bus_config->mosi_io_num, spi_periph_signal[host].spid_in, false);
#if CONFIG_IDF_TARGET_ESP32S2BETA
            PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[bus_config->mosi_io_num]);
#endif
            FUNC5(GPIO_PIN_MUX_REG[bus_config->mosi_io_num], FUNC_GPIO);
        }
        if (bus_config->miso_io_num >= 0) {
            if (miso_need_output || (temp_flag&SPICOMMON_BUSFLAG_DUAL)) {
                FUNC14(bus_config->miso_io_num, GPIO_MODE_INPUT_OUTPUT);
                FUNC13(bus_config->miso_io_num, spi_periph_signal[host].spiq_out, false, false);
            } else {
                FUNC14(bus_config->miso_io_num, GPIO_MODE_INPUT);
            }
            FUNC12(bus_config->miso_io_num, spi_periph_signal[host].spiq_in, false);
#if CONFIG_IDF_TARGET_ESP32S2BETA
            PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[bus_config->miso_io_num]);
#endif
            FUNC5(GPIO_PIN_MUX_REG[bus_config->miso_io_num], FUNC_GPIO);
        }
        if (bus_config->quadwp_io_num >= 0) {
            FUNC14(bus_config->quadwp_io_num, GPIO_MODE_INPUT_OUTPUT);
            FUNC13(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_out, false, false);
            FUNC12(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_in, false);
#if CONFIG_IDF_TARGET_ESP32S2BETA
            PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]);
#endif
            FUNC5(GPIO_PIN_MUX_REG[bus_config->quadwp_io_num], FUNC_GPIO);
        }
        if (bus_config->quadhd_io_num >= 0) {
            FUNC14(bus_config->quadhd_io_num, GPIO_MODE_INPUT_OUTPUT);
            FUNC13(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_out, false, false);
            FUNC12(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_in, false);
#if CONFIG_IDF_TARGET_ESP32S2BETA
            PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]);
#endif
            FUNC5(GPIO_PIN_MUX_REG[bus_config->quadhd_io_num], FUNC_GPIO);
        }
        if (bus_config->sclk_io_num >= 0) {
            if (sclk_need_output) {
                FUNC14(bus_config->sclk_io_num, GPIO_MODE_INPUT_OUTPUT);
                FUNC13(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_out, false, false);
            } else {
                FUNC14(bus_config->sclk_io_num, GPIO_MODE_INPUT);
            }
            FUNC12(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_in, false);
#if CONFIG_IDF_TARGET_ESP32S2BETA
            PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[bus_config->sclk_io_num]);
#endif
            FUNC5(GPIO_PIN_MUX_REG[bus_config->sclk_io_num], FUNC_GPIO);
        }
    }

    //Select DMA channel.
#ifdef CONFIG_IDF_TARGET_ESP32
    DPORT_SET_PERI_REG_BITS(DPORT_SPI_DMA_CHAN_SEL_REG, 3, dma_chan, (host * 2));
#elif defined(CONFIG_IDF_TARGET_ESP32S2BETA)
    if (dma_chan==VSPI_HOST) {
        DPORT_SET_PERI_REG_MASK(DPORT_SPI_DMA_CHAN_SEL_REG, DPORT_SPI_SHARED_DMA_SEL_M);
    }
#endif

    if (flags_o) *flags_o = temp_flag;
    return ESP_OK;
}
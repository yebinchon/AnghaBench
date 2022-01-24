#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int spics_io_num; } ;
typedef  TYPE_1__ spi_device_interface_config_t ;
typedef  int /*<<< orphan*/  spi_device_handle_t ;
struct TYPE_8__ {int mosi_io_num; int miso_io_num; int sclk_io_num; } ;
typedef  TYPE_2__ spi_bus_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 TYPE_2__ FUNC0 () ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  TEST_SPI_HOST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 

__attribute__((used)) static esp_err_t FUNC6(int mosi, int miso, int sclk, int cs)
{
    esp_err_t ret;
    spi_bus_config_t cfg = FUNC0();
    cfg.mosi_io_num = mosi;
    cfg.miso_io_num = miso;
    cfg.sclk_io_num = sclk;

    spi_device_interface_config_t master_cfg = FUNC1();
    master_cfg.spics_io_num = cs;

    ret = FUNC5(TEST_SPI_HOST, &cfg, 1);
    if (ret != ESP_OK) return ret;

    spi_device_handle_t spi;
    ret = FUNC3(TEST_SPI_HOST, &master_cfg, &spi);
    if (ret != ESP_OK) {
        FUNC4(TEST_SPI_HOST);
        return ret;
    }

    FUNC2(spi);
    return ESP_OK;
}
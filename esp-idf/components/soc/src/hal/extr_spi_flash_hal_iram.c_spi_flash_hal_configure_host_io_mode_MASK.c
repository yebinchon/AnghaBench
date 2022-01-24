#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int extra_dummy; } ;
typedef  TYPE_1__ spi_flash_memspi_data_t ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ spi_flash_host_driver_t ;
typedef  int /*<<< orphan*/  spi_dev_t ;
typedef  int /*<<< orphan*/  esp_flash_io_mode_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

esp_err_t FUNC7(
    spi_flash_host_driver_t *host,
    uint32_t command,
    uint32_t addr_bitlen,
    int dummy_cyclelen_base,
    esp_flash_io_mode_t io_mode)
{
    // Add dummy cycles to compensate for latency of GPIO matrix and external delay, if necessary...
    int dummy_cyclelen = dummy_cyclelen_base + ((spi_flash_memspi_data_t *)host->driver_data)->extra_dummy;

    spi_dev_t *dev = FUNC0(host);
    FUNC2(dev, command);
    FUNC1(dev, addr_bitlen);
    FUNC3(dev, dummy_cyclelen);
    //disable all data phases, enable them later if needed
    FUNC4(dev, 0);
    FUNC5(dev, 0);
    FUNC6(dev, io_mode);
    return ESP_OK;
}
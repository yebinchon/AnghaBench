#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* poll_cmd_done ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ spi_flash_host_driver_t ;
typedef  int /*<<< orphan*/  spi_dev_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

esp_err_t FUNC6(spi_flash_host_driver_t *host, void *buffer, uint32_t address, uint32_t read_len)
{
    spi_dev_t *dev = FUNC0(host);
    //the command is already set by ``spi_flash_hal_configure_host_io_mode`` before.
    FUNC2(dev, address << 8);
    FUNC3(dev, read_len * 8);
    FUNC4(dev);
    host->poll_cmd_done(host);
    FUNC1(dev, buffer, read_len);
    return ESP_OK;
}
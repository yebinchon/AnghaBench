#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  miso_data; int /*<<< orphan*/  mosi_data; int /*<<< orphan*/  mosi_len; int /*<<< orphan*/  miso_len; int /*<<< orphan*/  command; } ;
typedef  TYPE_1__ spi_flash_trans_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* poll_cmd_done ) (TYPE_2__*) ;int /*<<< orphan*/  (* configure_host_io_mode ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ spi_flash_host_driver_t ;
typedef  int /*<<< orphan*/  spi_dev_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  SPI_FLASH_FASTRD ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

esp_err_t FUNC9(spi_flash_host_driver_t *host, spi_flash_trans_t *trans)
{
    host->configure_host_io_mode(host, trans->command, 0, 0, SPI_FLASH_FASTRD);

    spi_dev_t *dev = FUNC0(host);
    //disable dummy if no input phase
    if (trans->miso_len == 0) {
        FUNC2(dev, 0);
    }

    FUNC3(dev, trans->miso_len);
    FUNC4(dev, trans->mosi_len);

    FUNC6(dev, trans->mosi_data);

    FUNC5(dev);
    host->poll_cmd_done(host);
    FUNC1(dev, trans->miso_data, 8);
    return ESP_OK;
}
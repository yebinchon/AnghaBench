#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t spi_host_device_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_5__ {TYPE_1__* dmadesc_tx; TYPE_1__* dmadesc_rx; } ;
struct TYPE_4__ {scalar_t__ dma_chan; int /*<<< orphan*/  intr; TYPE_2__ hal; int /*<<< orphan*/  pm_lock; int /*<<< orphan*/  bus_cfg; int /*<<< orphan*/ * device; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_OK ; 
 int NO_CS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 size_t SPI_HOST ; 
 size_t VSPI_HOST ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 TYPE_1__** spihost ; 

esp_err_t FUNC9(spi_host_device_t host)
{
    int x;
    FUNC0(host>=SPI_HOST && host<=VSPI_HOST, "invalid host", ESP_ERR_INVALID_ARG);
    FUNC0(spihost[host]!=NULL, "host not in use", ESP_ERR_INVALID_STATE);
    for (x=0; x<NO_CS; x++) {
        FUNC0(FUNC1(&spihost[host]->device[x])==NULL, "not all CSses freed", ESP_ERR_INVALID_STATE);
    }
    FUNC6(&spihost[host]->bus_cfg);

    if ( spihost[host]->dma_chan > 0 ) {
        FUNC7 ( spihost[host]->dma_chan );
    }
#ifdef CONFIG_PM_ENABLE
    esp_pm_lock_delete(spihost[host]->pm_lock);
#endif
    FUNC5(&spihost[host]->hal);
    FUNC4(spihost[host]->hal.dmadesc_rx);
    FUNC4(spihost[host]->hal.dmadesc_tx);

    FUNC2(spihost[host]->intr);
    FUNC8(host);
    FUNC4(spihost[host]);
    spihost[host]=NULL;
    return ESP_OK;
}
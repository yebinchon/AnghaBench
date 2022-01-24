#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t spi_host_device_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {TYPE_2__* dmadesc_rx; TYPE_2__* dmadesc_tx; } ;
struct TYPE_7__ {scalar_t__ dma_chan; int /*<<< orphan*/  pm_lock; int /*<<< orphan*/  intr; TYPE_1__ hal; scalar_t__ ret_queue; scalar_t__ trans_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 TYPE_2__** spihost ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

esp_err_t FUNC9(spi_host_device_t host)
{
    FUNC0(FUNC1(host), "invalid host", ESP_ERR_INVALID_ARG);
    FUNC0(spihost[host], "host not slave", ESP_ERR_INVALID_ARG);
    if (spihost[host]->trans_queue) FUNC8(spihost[host]->trans_queue);
    if (spihost[host]->ret_queue) FUNC8(spihost[host]->ret_queue);
    if ( spihost[host]->dma_chan > 0 ) {
        FUNC6 ( spihost[host]->dma_chan );
    }
    FUNC5(spihost[host]->hal.dmadesc_tx);
    FUNC5(spihost[host]->hal.dmadesc_rx);
    FUNC2(spihost[host]->intr);
#ifdef CONFIG_PM_ENABLE
    esp_pm_lock_release(spihost[host]->pm_lock);
    esp_pm_lock_delete(spihost[host]->pm_lock);
#endif //CONFIG_PM_ENABLE
    FUNC5(spihost[host]);
    spihost[host] = NULL;
    FUNC7(host);
    return ESP_OK;
}
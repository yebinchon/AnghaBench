#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  PERIPH_SDMMC_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * s_event_queue ; 
 int /*<<< orphan*/ * s_intr_handle ; 
 int /*<<< orphan*/ * s_io_intr_event ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC5(void)
{
    if (!s_intr_handle) {
        return ESP_ERR_INVALID_STATE;
    }
    FUNC0(s_intr_handle);
    s_intr_handle = NULL;
    FUNC4(s_event_queue);
    s_event_queue = NULL;
    FUNC4(s_io_intr_event);
    s_io_intr_event = NULL;
    FUNC2();
    FUNC3();
    FUNC1(PERIPH_SDMMC_MODULE);
    return ESP_OK;
}
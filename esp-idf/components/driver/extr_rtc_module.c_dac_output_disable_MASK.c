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
typedef  scalar_t__ dac_channel_t ;

/* Variables and functions */
 scalar_t__ DAC_CHANNEL_1 ; 
 scalar_t__ DAC_CHANNEL_MAX ; 
 int /*<<< orphan*/  DAC_ERR_STR_CHANNEL_ERROR ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

esp_err_t FUNC4(dac_channel_t channel)
{
    FUNC0((channel >= DAC_CHANNEL_1) && (channel < DAC_CHANNEL_MAX), DAC_ERR_STR_CHANNEL_ERROR, ESP_ERR_INVALID_ARG);
    FUNC2(&rtc_spinlock);
    FUNC1(channel, false);
    FUNC3(&rtc_spinlock);

    return ESP_OK;
}
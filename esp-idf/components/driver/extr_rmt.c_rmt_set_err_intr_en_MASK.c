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
typedef  int rmt_channel_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  RMT_CHANNEL_ERROR_STR ; 
 int RMT_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC4(rmt_channel_t channel, bool en)
{
    FUNC1(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    if(en) {
        FUNC3(FUNC0(channel * 3 + 2));
    } else {
        FUNC2(FUNC0(channel * 3 + 2));
    }
    return ESP_OK;
}
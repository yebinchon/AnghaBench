#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ channel; int /*<<< orphan*/  sigmadelta_gpio; int /*<<< orphan*/  sigmadelta_prescale; int /*<<< orphan*/  sigmadelta_duty; } ;
typedef  TYPE_1__ sigmadelta_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGMADELTA_CHANNEL_ERR_STR ; 
 scalar_t__ SIGMADELTA_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGMADELTA_IO_ERR_STR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

esp_err_t FUNC5(const sigmadelta_config_t *config)
{
    FUNC1(config->channel < SIGMADELTA_CHANNEL_MAX, SIGMADELTA_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    FUNC1(FUNC0(config->sigmadelta_gpio), SIGMADELTA_IO_ERR_STR, ESP_ERR_INVALID_ARG);
    FUNC2(config->channel, config->sigmadelta_duty);
    FUNC4(config->channel, config->sigmadelta_prescale);
    FUNC3(config->channel, config->sigmadelta_gpio);
    return ESP_OK;
}
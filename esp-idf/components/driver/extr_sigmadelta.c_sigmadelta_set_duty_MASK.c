#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t sigmadelta_channel_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {TYPE_1__* channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  duty; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__ SIGMADELTA ; 
 int /*<<< orphan*/  SIGMADELTA_CHANNEL_ERR_STR ; 
 size_t SIGMADELTA_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC1(sigmadelta_channel_t channel, int8_t duty)
{
    FUNC0(channel < SIGMADELTA_CHANNEL_MAX, SIGMADELTA_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    SIGMADELTA.channel[channel].duty = duty;
    return ESP_OK;
}
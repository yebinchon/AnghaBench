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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ unit; scalar_t__ channel; int pulse_gpio_num; int ctrl_gpio_num; int /*<<< orphan*/  lctrl_mode; int /*<<< orphan*/  hctrl_mode; int /*<<< orphan*/  neg_mode; int /*<<< orphan*/  pos_mode; int /*<<< orphan*/  counter_l_lim; int /*<<< orphan*/  counter_h_lim; } ;
typedef  TYPE_1__ pcnt_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (int) ; 
 char* PCNT_CHANNEL_ERR_STR ; 
 scalar_t__ PCNT_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCNT_COUNT_MAX ; 
 char* PCNT_COUNT_MODE_ERR_STR ; 
 char* PCNT_CTRL_MODE_ERR_STR ; 
 int /*<<< orphan*/  PCNT_EVT_H_LIM ; 
 int /*<<< orphan*/  PCNT_EVT_L_LIM ; 
 int /*<<< orphan*/  PCNT_EVT_ZERO ; 
 int /*<<< orphan*/  PCNT_MODE_MAX ; 
 char* PCNT_UNIT_ERR_STR ; 
 scalar_t__ PCNT_UNIT_MAX ; 
 int /*<<< orphan*/  PERIPH_PCNT_MODULE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC9(const pcnt_config_t *pcnt_config)
{
    uint8_t unit = pcnt_config->unit;
    uint8_t channel = pcnt_config->channel;
    int input_io = pcnt_config->pulse_gpio_num;
    int ctrl_io = pcnt_config->ctrl_gpio_num;

    FUNC1(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    FUNC1(channel < PCNT_CHANNEL_MAX, PCNT_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    FUNC1(input_io < 0 || (FUNC0(input_io) && (input_io != ctrl_io)), "PCNT pulse input io error", ESP_ERR_INVALID_ARG);
    FUNC1(ctrl_io < 0 || FUNC0(ctrl_io), "PCNT ctrl io error", ESP_ERR_INVALID_ARG);
    FUNC1((pcnt_config->pos_mode < PCNT_COUNT_MAX) && (pcnt_config->neg_mode < PCNT_COUNT_MAX), PCNT_COUNT_MODE_ERR_STR, ESP_ERR_INVALID_ARG);
    FUNC1((pcnt_config->hctrl_mode < PCNT_MODE_MAX) && (pcnt_config->lctrl_mode < PCNT_MODE_MAX), PCNT_CTRL_MODE_ERR_STR, ESP_ERR_INVALID_ARG);
    /*Enalbe hardware module*/
    static bool pcnt_enable = false;
    if (pcnt_enable == false) {
        FUNC8(PERIPH_PCNT_MODULE);
        pcnt_enable = true;
    }
    FUNC7(PERIPH_PCNT_MODULE);
    /*Set counter range*/
    FUNC4(unit, PCNT_EVT_H_LIM, pcnt_config->counter_h_lim);
    FUNC4(unit, PCNT_EVT_L_LIM, pcnt_config->counter_l_lim);
    /*Default value after reboot is positive, we disable these events like others*/
    FUNC2(unit, PCNT_EVT_H_LIM);
    FUNC2(unit, PCNT_EVT_L_LIM);
    FUNC2(unit, PCNT_EVT_ZERO);
    FUNC3(unit);
    /*set pulse input and control mode*/
    FUNC5(unit, channel, pcnt_config->pos_mode, pcnt_config->neg_mode, pcnt_config->hctrl_mode, pcnt_config->lctrl_mode);
    /*Set pulse input and control pins*/
    FUNC6(unit, channel, input_io, ctrl_io);
    return ESP_OK;
}
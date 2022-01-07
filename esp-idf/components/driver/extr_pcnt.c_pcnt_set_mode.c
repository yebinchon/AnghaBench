
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t pcnt_unit_t ;
typedef scalar_t__ pcnt_ctrl_mode_t ;
typedef scalar_t__ pcnt_count_mode_t ;
typedef scalar_t__ pcnt_channel_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* conf_unit; } ;
struct TYPE_4__ {scalar_t__ ch1_lctrl_mode; scalar_t__ ch1_hctrl_mode; scalar_t__ ch1_neg_mode; scalar_t__ ch1_pos_mode; scalar_t__ ch0_lctrl_mode; scalar_t__ ch0_hctrl_mode; scalar_t__ ch0_neg_mode; scalar_t__ ch0_pos_mode; } ;
struct TYPE_5__ {TYPE_1__ conf0; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__ PCNT ;
 int PCNT_CHANNEL_ERR_STR ;
 scalar_t__ PCNT_CHANNEL_MAX ;
 int PCNT_CHECK (int,int ,int ) ;
 scalar_t__ PCNT_COUNT_MAX ;
 int PCNT_COUNT_MODE_ERR_STR ;
 int PCNT_CTRL_MODE_ERR_STR ;
 scalar_t__ PCNT_MODE_MAX ;
 int PCNT_UNIT_ERR_STR ;
 size_t PCNT_UNIT_MAX ;

esp_err_t pcnt_set_mode(pcnt_unit_t unit, pcnt_channel_t channel, pcnt_count_mode_t pos_mode, pcnt_count_mode_t neg_mode, pcnt_ctrl_mode_t hctrl_mode, pcnt_ctrl_mode_t lctrl_mode)
{
    PCNT_CHECK(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(channel < PCNT_CHANNEL_MAX, PCNT_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK((pos_mode < PCNT_COUNT_MAX) && (neg_mode < PCNT_COUNT_MAX), PCNT_COUNT_MODE_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK((hctrl_mode < PCNT_MODE_MAX) && (lctrl_mode < PCNT_MODE_MAX), PCNT_CTRL_MODE_ERR_STR, ESP_ERR_INVALID_ARG);

    if(channel == 0) {
        PCNT.conf_unit[unit].conf0.ch0_pos_mode = pos_mode;
        PCNT.conf_unit[unit].conf0.ch0_neg_mode = neg_mode;
        PCNT.conf_unit[unit].conf0.ch0_hctrl_mode = hctrl_mode;
        PCNT.conf_unit[unit].conf0.ch0_lctrl_mode = lctrl_mode;
    } else {
        PCNT.conf_unit[unit].conf0.ch1_pos_mode = pos_mode;
        PCNT.conf_unit[unit].conf0.ch1_neg_mode = neg_mode;
        PCNT.conf_unit[unit].conf0.ch1_hctrl_mode = hctrl_mode;
        PCNT.conf_unit[unit].conf0.ch1_lctrl_mode = lctrl_mode;
    }
    return ESP_OK;
}

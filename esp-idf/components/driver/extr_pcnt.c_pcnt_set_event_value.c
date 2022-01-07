
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t pcnt_unit_t ;
typedef scalar_t__ pcnt_evt_type_t ;
typedef scalar_t__ int16_t ;
typedef int esp_err_t ;
struct TYPE_8__ {TYPE_3__* conf_unit; } ;
struct TYPE_6__ {scalar_t__ cnt_thres1; scalar_t__ cnt_thres0; } ;
struct TYPE_5__ {scalar_t__ cnt_h_lim; scalar_t__ cnt_l_lim; } ;
struct TYPE_7__ {TYPE_2__ conf1; TYPE_1__ conf2; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_4__ PCNT ;
 int PCNT_CHECK (int,int ,int ) ;
 scalar_t__ PCNT_EVT_H_LIM ;
 scalar_t__ PCNT_EVT_L_LIM ;
 scalar_t__ PCNT_EVT_MAX ;
 scalar_t__ PCNT_EVT_THRES_0 ;
 scalar_t__ PCNT_EVT_THRES_1 ;
 int PCNT_EVT_TYPE_ERR_STR ;
 int PCNT_LIMT_VAL_ERR_STR ;
 int PCNT_UNIT_ERR_STR ;
 size_t PCNT_UNIT_MAX ;

esp_err_t pcnt_set_event_value(pcnt_unit_t unit, pcnt_evt_type_t evt_type, int16_t value)
{
    PCNT_CHECK(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(evt_type < PCNT_EVT_MAX, PCNT_EVT_TYPE_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(!(evt_type == PCNT_EVT_L_LIM && value > 0), PCNT_LIMT_VAL_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(!(evt_type == PCNT_EVT_H_LIM && value < 0), PCNT_LIMT_VAL_ERR_STR, ESP_ERR_INVALID_ARG);
    if(evt_type == PCNT_EVT_L_LIM) {
        PCNT.conf_unit[unit].conf2.cnt_l_lim = value;
    } else if(evt_type == PCNT_EVT_H_LIM) {
        PCNT.conf_unit[unit].conf2.cnt_h_lim = value;
    } else if(evt_type == PCNT_EVT_THRES_0) {
        PCNT.conf_unit[unit].conf1.cnt_thres0 = value;
    } else if(evt_type == PCNT_EVT_THRES_1) {
        PCNT.conf_unit[unit].conf1.cnt_thres1 = value;
    }
    return ESP_OK;
}

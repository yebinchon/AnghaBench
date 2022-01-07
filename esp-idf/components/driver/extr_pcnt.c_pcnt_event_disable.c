
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t pcnt_unit_t ;
typedef scalar_t__ pcnt_evt_type_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* conf_unit; } ;
struct TYPE_4__ {scalar_t__ thr_zero_en; scalar_t__ thr_thres1_en; scalar_t__ thr_thres0_en; scalar_t__ thr_h_lim_en; scalar_t__ thr_l_lim_en; } ;
struct TYPE_5__ {TYPE_1__ conf0; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__ PCNT ;
 int PCNT_CHECK (int,int ,int ) ;
 scalar_t__ PCNT_EVT_H_LIM ;
 scalar_t__ PCNT_EVT_L_LIM ;
 scalar_t__ PCNT_EVT_MAX ;
 scalar_t__ PCNT_EVT_THRES_0 ;
 scalar_t__ PCNT_EVT_THRES_1 ;
 int PCNT_EVT_TYPE_ERR_STR ;
 scalar_t__ PCNT_EVT_ZERO ;
 int PCNT_UNIT_ERR_STR ;
 size_t PCNT_UNIT_MAX ;

esp_err_t pcnt_event_disable(pcnt_unit_t unit, pcnt_evt_type_t evt_type)
{
    PCNT_CHECK(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(evt_type < PCNT_EVT_MAX, PCNT_EVT_TYPE_ERR_STR, ESP_ERR_INVALID_ARG);
    if(evt_type == PCNT_EVT_L_LIM) {
        PCNT.conf_unit[unit].conf0.thr_l_lim_en = 0;
    } else if(evt_type == PCNT_EVT_H_LIM) {
        PCNT.conf_unit[unit].conf0.thr_h_lim_en = 0;
    } else if(evt_type == PCNT_EVT_THRES_0) {
        PCNT.conf_unit[unit].conf0.thr_thres0_en = 0;
    } else if(evt_type == PCNT_EVT_THRES_1) {
        PCNT.conf_unit[unit].conf0.thr_thres1_en = 0;
    } else if(evt_type == PCNT_EVT_ZERO) {
        PCNT.conf_unit[unit].conf0.thr_zero_en = 0;
    }
    return ESP_OK;
}

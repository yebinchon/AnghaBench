
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t pcnt_unit_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* conf_unit; } ;
struct TYPE_4__ {scalar_t__ filter_en; } ;
struct TYPE_5__ {TYPE_1__ conf0; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__ PCNT ;
 int PCNT_CHECK (int,int ,int ) ;
 int PCNT_UNIT_ERR_STR ;
 size_t PCNT_UNIT_MAX ;

esp_err_t pcnt_filter_disable(pcnt_unit_t unit)
{
    PCNT_CHECK(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT.conf_unit[unit].conf0.filter_en = 0;
    return ESP_OK;
}

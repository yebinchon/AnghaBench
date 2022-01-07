
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t pcnt_unit_t ;
typedef scalar_t__ int16_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__* cnt_unit; } ;
struct TYPE_3__ {scalar_t__ cnt_val; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__ PCNT ;
 int PCNT_ADDRESS_ERR_STR ;
 int PCNT_CHECK (int,int ,int ) ;
 int PCNT_UNIT_ERR_STR ;
 size_t PCNT_UNIT_MAX ;

esp_err_t pcnt_get_counter_value(pcnt_unit_t pcnt_unit, int16_t* count)
{
    PCNT_CHECK(pcnt_unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(count != ((void*)0), PCNT_ADDRESS_ERR_STR, ESP_ERR_INVALID_ARG);
    *count = (int16_t) PCNT.cnt_unit[pcnt_unit].cnt_val;
    return ESP_OK;
}

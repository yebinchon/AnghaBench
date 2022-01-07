
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int param_type; int * value; } ;
struct TYPE_5__ {TYPE_1__ set_security_param; } ;
typedef TYPE_2__ btc_gap_bt_args_t ;



 int ESP_BT_STATUS_FAIL ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int bta_dm_co_bt_set_io_cap (int ) ;

__attribute__((used)) static esp_err_t btc_gap_bt_set_security_param(btc_gap_bt_args_t *arg)
{
    esp_err_t ret;
    switch(arg->set_security_param.param_type) {
    case 128:{
        uint8_t iocap = 0;
        uint8_t *p = arg->set_security_param.value;
        STREAM_TO_UINT8(iocap, p);
        ret = bta_dm_co_bt_set_io_cap(iocap);
        break;
    }
    default:
        ret = ESP_BT_STATUS_FAIL;
        break;
    }
    return ret;
}

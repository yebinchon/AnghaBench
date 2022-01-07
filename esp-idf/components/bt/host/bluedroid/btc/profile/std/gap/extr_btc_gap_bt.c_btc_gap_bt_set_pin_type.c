
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pin_code_len; int pin_code; int pin_type; } ;
struct TYPE_5__ {TYPE_1__ set_pin_type; } ;
typedef TYPE_2__ btc_gap_bt_args_t ;


 int BTA_DMSetPinType (int ,int ,int ) ;

__attribute__((used)) static void btc_gap_bt_set_pin_type(btc_gap_bt_args_t *arg){
    BTA_DMSetPinType (arg->set_pin_type.pin_type, arg->set_pin_type.pin_code, arg->set_pin_type.pin_code_len);
}

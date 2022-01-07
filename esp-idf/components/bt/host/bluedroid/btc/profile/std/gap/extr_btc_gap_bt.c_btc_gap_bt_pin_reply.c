
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int address; } ;
struct TYPE_6__ {int pin_code; int pin_code_len; int accept; TYPE_1__ bda; } ;
struct TYPE_7__ {TYPE_2__ pin_reply; } ;
typedef TYPE_3__ btc_gap_bt_args_t ;


 int BTA_DmPinReply (int ,int ,int ,int ) ;

__attribute__((used)) static void btc_gap_bt_pin_reply(btc_gap_bt_args_t *arg){
    BTA_DmPinReply(arg->pin_reply.bda.address, arg->pin_reply.accept, arg->pin_reply.pin_code_len, arg->pin_reply.pin_code);
}

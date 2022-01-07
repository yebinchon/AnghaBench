
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int act; scalar_t__ arg; } ;
typedef TYPE_4__ btc_msg_t ;
struct TYPE_10__ {int p_url; int p_manufacturer_data; } ;
struct TYPE_8__ {TYPE_3__ eir_data; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_12__ {TYPE_1__ config_eir; TYPE_2__ set_security_param; } ;
typedef TYPE_5__ btc_gap_bt_args_t ;
 int BTC_TRACE_ERROR (char*,int,TYPE_5__*) ;
 int osi_free (int ) ;

void btc_gap_bt_arg_deep_free(btc_msg_t *msg)
{
    btc_gap_bt_args_t *arg = (btc_gap_bt_args_t *)msg->arg;
    switch (msg->act) {
    case 130:
    case 128:
    case 143:
    case 140:
    case 139:
    case 132:
    case 135:
    case 134:
    case 137:
    case 131:
    case 133:
    case 136:
        break;

    case 138:
    case 141:
        break;
    case 129:
        if (arg->set_security_param.value) {
            osi_free(arg->set_security_param.value);
        }
        break;


    case 142:
        if (arg->config_eir.eir_data.p_manufacturer_data) {
            osi_free(arg->config_eir.eir_data.p_manufacturer_data);
        }
        if (arg->config_eir.eir_data.p_url) {
            osi_free(arg->config_eir.eir_data.p_url);
        }
        break;
    default:
        BTC_TRACE_ERROR("Unhandled deep copy %d, arg: %p\n", msg->act, arg);
        break;
    }
}

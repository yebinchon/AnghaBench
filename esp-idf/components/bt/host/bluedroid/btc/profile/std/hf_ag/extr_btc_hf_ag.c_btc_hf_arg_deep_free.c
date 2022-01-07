
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int act; scalar_t__ arg; } ;
typedef TYPE_6__ btc_msg_t ;
struct TYPE_12__ {int number; } ;
struct TYPE_11__ {int number; } ;
struct TYPE_10__ {int number; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_13__ {int unat; } ;
struct TYPE_15__ {TYPE_4__ phone; TYPE_3__ cnum_rep; TYPE_2__ clcc_rep; TYPE_1__ cops_rep; TYPE_5__ unat_rep; } ;
typedef TYPE_7__ btc_hf_args_t ;
 int osi_free (int ) ;

void btc_hf_arg_deep_free(btc_msg_t *msg)
{
    btc_hf_args_t *arg = (btc_hf_args_t *)msg->arg;

    switch (msg->act) {
        case 128:
        {
            if (arg->unat_rep.unat) {
                osi_free(arg->unat_rep.unat);
            }
            break;
        }

        case 132:
        {
            if (arg->cops_rep.name) {
                osi_free(arg->cops_rep.name);
            }
            break;
        }

        case 134:
        {
            if (arg->clcc_rep.number) {
                osi_free(arg->clcc_rep.number);
            }
            break;
        }

        case 133:
        {
            if (arg->cnum_rep.number) {
                osi_free(arg->cnum_rep.number);
            }
            break;
        }

        case 135:
        case 129:
        case 130:
        case 131:
        {
            if (arg->phone.number) {
                osi_free(arg->phone.number);
            }
            break;
        }

        default:
            break;
    }
}

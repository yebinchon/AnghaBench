
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int bda_list; } ;
struct TYPE_6__ {int p_value; } ;
struct TYPE_8__ {TYPE_2__ get_addr_list; TYPE_1__ read; } ;
typedef TYPE_3__ tBTA_GATTC ;
struct TYPE_9__ {int act; scalar_t__ arg; } ;
typedef TYPE_4__ btc_msg_t ;






 int osi_free (int ) ;

__attribute__((used)) static void btc_gattc_free_req_data(btc_msg_t *msg)
{
    tBTA_GATTC *arg = (tBTA_GATTC *)(msg->arg);
    switch (msg->act) {
        case 129:
        case 130:
        case 128: {
            if (arg->read.p_value) {
                osi_free(arg->read.p_value);
            }
            break;
        }
        case 131: {
            if (arg->get_addr_list.bda_list) {
                osi_free(arg->get_addr_list.bda_list);
            }
            break;
        }
        default:
            break;
    }
    return;
}

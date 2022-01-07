
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int p_data; } ;
struct TYPE_7__ {TYPE_1__ req_data; } ;
typedef TYPE_2__ tBTA_GATTS ;
struct TYPE_8__ {int act; } ;
typedef TYPE_3__ btc_msg_t ;







 int osi_free (int ) ;

__attribute__((used)) static void btc_gatts_cb_param_copy_free(btc_msg_t *msg, tBTA_GATTS *p_data)
{
    uint16_t event = msg->act;

    switch (event) {
    case 129:
    case 128:
    case 131:
    case 130:
        if (p_data && p_data->req_data.p_data) {
            osi_free(p_data->req_data.p_data);
        }
        break;
    case 132:
        break;
    default:
        break;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int type; int value; } ;
typedef TYPE_2__ tBTA_AG_IND ;
struct TYPE_7__ {int call_held_status; int battery_level; int roam; int signal_strength; int svc; int call_setup_status; int call_status; } ;
struct TYPE_9__ {TYPE_1__ cind; } ;
typedef TYPE_3__ esp_hf_cb_param_t ;
 int ESP_HF_CIND_RESPONSE_EVT ;
 int btc_hf_cb_to_app (int ,TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void btc_hf_cind_evt(tBTA_AG_IND *ind)
{
    esp_hf_cb_param_t param;
    memset(&param, 0, sizeof(esp_hf_cb_param_t));

    switch (ind->type) {
        case 133:
            param.cind.call_status = ind->value;
            break;
        case 131:
            param.cind.call_setup_status = ind->value;
            break;
        case 129:
            param.cind.svc = ind->value;
            break;
        case 128:
            param.cind.signal_strength = ind->value;
            break;
        case 130:
            param.cind.roam = ind->value;
            break;
        case 134:
            param.cind.battery_level = ind->value;
            break;
        case 132:
            param.cind.call_held_status = ind->value;
            break;
    }
    btc_hf_cb_to_app(ESP_HF_CIND_RESPONSE_EVT, &param);
}

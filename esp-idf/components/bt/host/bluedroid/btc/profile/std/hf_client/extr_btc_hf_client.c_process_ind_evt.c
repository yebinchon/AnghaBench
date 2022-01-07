
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_20__ {int type; int value; } ;
typedef TYPE_8__ tBTA_HF_CLIENT_IND ;
struct TYPE_19__ {int value; } ;
struct TYPE_18__ {int status; } ;
struct TYPE_17__ {int value; } ;
struct TYPE_16__ {int status; } ;
struct TYPE_15__ {int status; } ;
struct TYPE_14__ {int status; } ;
struct TYPE_13__ {int status; } ;
struct TYPE_21__ {TYPE_7__ battery_level; TYPE_6__ roaming; TYPE_5__ signal_strength; TYPE_4__ service_availability; TYPE_3__ call_held; TYPE_2__ call_setup; TYPE_1__ call; } ;
typedef TYPE_9__ esp_hf_client_cb_param_t ;
 int ESP_HF_CLIENT_CIND_BATTERY_LEVEL_EVT ;
 int ESP_HF_CLIENT_CIND_CALL_EVT ;
 int ESP_HF_CLIENT_CIND_CALL_HELD_EVT ;
 int ESP_HF_CLIENT_CIND_CALL_SETUP_EVT ;
 int ESP_HF_CLIENT_CIND_ROAMING_STATUS_EVT ;
 int ESP_HF_CLIENT_CIND_SERVICE_AVAILABILITY_EVT ;
 int ESP_HF_CLIENT_CIND_SIGNAL_STRENGTH_EVT ;
 int btc_hf_client_cb_to_app (int ,TYPE_9__*) ;
 int memset (TYPE_9__*,int ,int) ;

__attribute__((used)) static void process_ind_evt(tBTA_HF_CLIENT_IND *ind)
{
    esp_hf_client_cb_param_t param;
    memset(&param, 0, sizeof(esp_hf_client_cb_param_t));

    switch (ind->type)
    {
        case 133:
            param.call.status = ind->value;
            btc_hf_client_cb_to_app(ESP_HF_CLIENT_CIND_CALL_EVT, &param);
            break;

        case 131:
            param.call_setup.status = ind->value;
            btc_hf_client_cb_to_app(ESP_HF_CLIENT_CIND_CALL_SETUP_EVT, &param);
            break;
        case 132:
            param.call_held.status = ind->value;
            btc_hf_client_cb_to_app(ESP_HF_CLIENT_CIND_CALL_HELD_EVT, &param);
            break;

        case 129:
            param.service_availability.status = ind->value;
            btc_hf_client_cb_to_app(ESP_HF_CLIENT_CIND_SERVICE_AVAILABILITY_EVT, &param);
            break;

        case 128:
            param.signal_strength.value = ind->value;
            btc_hf_client_cb_to_app(ESP_HF_CLIENT_CIND_SIGNAL_STRENGTH_EVT, &param);
            break;

        case 130:
            param.roaming.status = ind->value;
            btc_hf_client_cb_to_app(ESP_HF_CLIENT_CIND_ROAMING_STATUS_EVT, &param);
            break;

        case 134:
            param.battery_level.value = ind->value;
            btc_hf_client_cb_to_app(ESP_HF_CLIENT_CIND_BATTERY_LEVEL_EVT, &param);
            break;

        default:
            break;
    }
}

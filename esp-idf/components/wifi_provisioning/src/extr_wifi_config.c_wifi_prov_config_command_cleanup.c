
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int msg; TYPE_5__* resp_apply_config; TYPE_5__* resp_set_config; TYPE_5__* resp_get_status; } ;
typedef TYPE_3__ WiFiConfigPayload ;
struct TYPE_7__ {TYPE_5__* data; } ;
struct TYPE_6__ {TYPE_5__* data; } ;
struct TYPE_9__ {struct TYPE_9__* connected; TYPE_2__ ssid; TYPE_1__ bssid; struct TYPE_9__* ip4_addr; int sta_state; } ;


 int ESP_LOGE (int ,char*) ;
 int TAG ;






 int free (TYPE_5__*) ;

__attribute__((used)) static void wifi_prov_config_command_cleanup(WiFiConfigPayload *resp, void *priv_data)
{
    if (!resp) {
        return;
    }

    switch (resp->msg) {
        case 129:
            {
                switch (resp->resp_get_status->sta_state) {
                    case 132:
                        break;
                    case 133:
                        if (resp->resp_get_status->connected) {
                            if (resp->resp_get_status->connected->ip4_addr) {
                                free(resp->resp_get_status->connected->ip4_addr);
                            }
                            if (resp->resp_get_status->connected->bssid.data) {
                                free(resp->resp_get_status->connected->bssid.data);
                            }
                            if (resp->resp_get_status->connected->ssid.data) {
                                free(resp->resp_get_status->connected->ssid.data);
                            }
                            free(resp->resp_get_status->connected);
                        }
                        break;
                    case 131:
                        break;
                    default:
                        break;
                }
                free(resp->resp_get_status);
            }
            break;
        case 128:
            {
                free(resp->resp_set_config);
            }
            break;
        case 130:
            {
                free(resp->resp_apply_config);
            }
            break;
        default:
            ESP_LOGE(TAG, "Unsupported response type in cleanup_handler");
            break;
    }
    return;
}

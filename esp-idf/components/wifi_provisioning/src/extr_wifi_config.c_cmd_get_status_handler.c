
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ (* get_status_handler ) (TYPE_5__*,int *) ;int ctx; } ;
typedef TYPE_4__ wifi_prov_config_handlers_t ;
struct TYPE_19__ {int auth_mode; int channel; int ssid; int bssid; int ip_addr; } ;
struct TYPE_21__ {scalar_t__ wifi_state; scalar_t__ fail_reason; TYPE_3__ conn_info; } ;
typedef TYPE_5__ wifi_prov_config_get_data_t ;
struct TYPE_22__ {int status; int fail_reason; void* state_case; int sta_state; TYPE_7__* connected; } ;
typedef TYPE_6__ uint8_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_18__ {int len; TYPE_6__* data; } ;
struct TYPE_17__ {TYPE_6__* data; int len; } ;
struct TYPE_23__ {int auth_mode; int channel; TYPE_6__* ip4_addr; TYPE_2__ bssid; TYPE_1__ ssid; } ;
typedef TYPE_7__ WifiConnectedState ;
struct TYPE_24__ {TYPE_6__* resp_get_status; int payload_case; } ;
typedef TYPE_8__ WiFiConfigPayload ;
typedef TYPE_6__ RespGetStatus ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 void* RESP_GET_STATUS__STATE_CONNECTED ;
 void* RESP_GET_STATUS__STATE_FAIL_REASON ;
 int STATUS__Success ;
 int TAG ;
 int WIFI_CONNECT_FAILED_REASON__AuthError ;
 int WIFI_CONNECT_FAILED_REASON__NetworkNotFound ;
 scalar_t__ WIFI_PROV_STA_AP_NOT_FOUND ;
 scalar_t__ WIFI_PROV_STA_AUTH_ERROR ;
 scalar_t__ WIFI_PROV_STA_CONNECTED ;
 scalar_t__ WIFI_PROV_STA_CONNECTING ;
 scalar_t__ WIFI_PROV_STA_DISCONNECTED ;
 int WIFI_STATION_STATE__Connected ;
 int WIFI_STATION_STATE__Connecting ;
 int WIFI_STATION_STATE__ConnectionFailed ;
 int WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_GET_STATUS ;
 int free (TYPE_6__*) ;
 scalar_t__ malloc (int) ;
 int resp_get_status__init (TYPE_6__*) ;
 TYPE_6__* strdup (int ) ;
 int strlen (int ) ;
 scalar_t__ strndup (int ,int) ;
 scalar_t__ stub1 (TYPE_5__*,int *) ;
 int wifi_connected_state__init (TYPE_7__*) ;

__attribute__((used)) static esp_err_t cmd_get_status_handler(WiFiConfigPayload *req,
                                        WiFiConfigPayload *resp, void *priv_data)
{
    ESP_LOGD(TAG, "Enter cmd_get_status_handler");
    wifi_prov_config_handlers_t *h = (wifi_prov_config_handlers_t *) priv_data;
    if (!h) {
        ESP_LOGE(TAG, "Command invoked without handlers");
        return ESP_ERR_INVALID_STATE;
    }

    RespGetStatus *resp_payload = (RespGetStatus *) malloc(sizeof(RespGetStatus));
    if (!resp_payload) {
        ESP_LOGE(TAG, "Error allocating memory");
        return ESP_ERR_NO_MEM;
    }
    resp_get_status__init(resp_payload);

    wifi_prov_config_get_data_t resp_data;
    if (h->get_status_handler(&resp_data, &h->ctx) == ESP_OK) {
        if (resp_data.wifi_state == WIFI_PROV_STA_CONNECTING) {
            resp_payload->sta_state = WIFI_STATION_STATE__Connecting;
            resp_payload->state_case = RESP_GET_STATUS__STATE_CONNECTED;
        } else if (resp_data.wifi_state == WIFI_PROV_STA_CONNECTED) {
            resp_payload->sta_state = WIFI_STATION_STATE__Connected;
            resp_payload->state_case = RESP_GET_STATUS__STATE_CONNECTED;
            WifiConnectedState *connected = (WifiConnectedState *)(
                                            malloc(sizeof(WifiConnectedState)));
            if (!connected) {
                ESP_LOGE(TAG, "Error allocating memory");
                return ESP_ERR_NO_MEM;
            }
            resp_payload->connected = connected;
            wifi_connected_state__init(connected);

            connected->ip4_addr = strdup(resp_data.conn_info.ip_addr);
            if (connected->ip4_addr == ((void*)0)) {
                free(resp_payload);
                return ESP_ERR_NO_MEM;
            }

            connected->bssid.len = sizeof(resp_data.conn_info.bssid);
            connected->bssid.data = (uint8_t *) strndup(resp_data.conn_info.bssid,
                                                        sizeof(resp_data.conn_info.bssid));
            if (connected->bssid.data == ((void*)0)) {
                free(connected->ip4_addr);
                free(resp_payload);
                return ESP_ERR_NO_MEM;
            }

            connected->ssid.len = strlen(resp_data.conn_info.ssid);
            connected->ssid.data = (uint8_t *) strdup(resp_data.conn_info.ssid);
            if (connected->ssid.data == ((void*)0)) {
                free(connected->bssid.data);
                free(connected->ip4_addr);
                free(resp_payload);
                return ESP_ERR_NO_MEM;
            }

            connected->channel = resp_data.conn_info.channel;
            connected->auth_mode = resp_data.conn_info.auth_mode;
        } else if (resp_data.wifi_state == WIFI_PROV_STA_DISCONNECTED) {
            resp_payload->sta_state = WIFI_STATION_STATE__ConnectionFailed;
            resp_payload->state_case = RESP_GET_STATUS__STATE_FAIL_REASON;

            if (resp_data.fail_reason == WIFI_PROV_STA_AUTH_ERROR) {
                resp_payload->fail_reason = WIFI_CONNECT_FAILED_REASON__AuthError;
            } else if (resp_data.fail_reason == WIFI_PROV_STA_AP_NOT_FOUND) {
                resp_payload->fail_reason = WIFI_CONNECT_FAILED_REASON__NetworkNotFound;
            }
        }
        resp_payload->status = STATUS__Success;
    }

    resp->payload_case = WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_GET_STATUS;
    resp->resp_get_status = resp_payload;
    return ESP_OK;
}

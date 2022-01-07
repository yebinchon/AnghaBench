
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* apply_config_handler ) (int *) ;int ctx; } ;
typedef TYPE_1__ wifi_prov_config_handlers_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_8__ {TYPE_3__* resp_apply_config; int payload_case; } ;
typedef TYPE_2__ WiFiConfigPayload ;
struct TYPE_9__ {int status; } ;
typedef TYPE_3__ RespApplyConfig ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int STATUS__InternalError ;
 int STATUS__Success ;
 int TAG ;
 int WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_APPLY_CONFIG ;
 scalar_t__ malloc (int) ;
 int resp_apply_config__init (TYPE_3__*) ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static esp_err_t cmd_apply_config_handler(WiFiConfigPayload *req,
                                          WiFiConfigPayload *resp, void *priv_data)
{
    ESP_LOGD(TAG, "Enter cmd_apply_config_handler");
    wifi_prov_config_handlers_t *h = (wifi_prov_config_handlers_t *) priv_data;
    if (!h) {
        ESP_LOGE(TAG, "Command invoked without handlers");
        return ESP_ERR_INVALID_STATE;
    }

    RespApplyConfig *resp_payload = (RespApplyConfig *) malloc(sizeof(RespApplyConfig));
    if (!resp_payload) {
        ESP_LOGE(TAG, "Error allocating memory");
        return ESP_ERR_NO_MEM;
    }

    resp_apply_config__init(resp_payload);

    if (h->apply_config_handler(&h->ctx) == ESP_OK) {
        resp_payload->status = STATUS__Success;
    } else {
        resp_payload->status = STATUS__InternalError;
    }

    resp->payload_case = WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_APPLY_CONFIG;
    resp->resp_apply_config = resp_payload;
    return ESP_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ssize_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_10__ {scalar_t__ msg; } ;
typedef TYPE_1__ WiFiConfigPayload ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ malloc (int ) ;
 int wi_fi_config_payload__free_unpacked (TYPE_1__*,int *) ;
 int wi_fi_config_payload__get_packed_size (TYPE_1__*) ;
 int wi_fi_config_payload__init (TYPE_1__*) ;
 int wi_fi_config_payload__pack (TYPE_1__*,int *) ;
 TYPE_1__* wi_fi_config_payload__unpack (int *,int ,int const*) ;
 int wifi_prov_config_command_cleanup (TYPE_1__*,void*) ;
 scalar_t__ wifi_prov_config_command_dispatcher (TYPE_1__*,TYPE_1__*,void*) ;

esp_err_t wifi_prov_config_data_handler(uint32_t session_id, const uint8_t *inbuf, ssize_t inlen,
                                        uint8_t **outbuf, ssize_t *outlen, void *priv_data)
{
    WiFiConfigPayload *req;
    WiFiConfigPayload resp;
    esp_err_t ret;

    req = wi_fi_config_payload__unpack(((void*)0), inlen, inbuf);
    if (!req) {
        ESP_LOGE(TAG, "Unable to unpack config data");
        return ESP_ERR_INVALID_ARG;
    }

    wi_fi_config_payload__init(&resp);
    ret = wifi_prov_config_command_dispatcher(req, &resp, priv_data);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Proto command dispatcher error %d", ret);
        return ESP_FAIL;
    }

    resp.msg = req->msg + 1;
    wi_fi_config_payload__free_unpacked(req, ((void*)0));

    *outlen = wi_fi_config_payload__get_packed_size(&resp);
    if (*outlen <= 0) {
        ESP_LOGE(TAG, "Invalid encoding for response");
        return ESP_FAIL;
    }

    *outbuf = (uint8_t *) malloc(*outlen);
    if (!*outbuf) {
        ESP_LOGE(TAG, "System out of memory");
        return ESP_ERR_NO_MEM;
    }
    wi_fi_config_payload__pack(&resp, *outbuf);
    wifi_prov_config_command_cleanup(&resp, priv_data);

    return ESP_OK;
}

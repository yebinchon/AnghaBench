
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
typedef TYPE_1__ LocalCtrlMessage ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOG_BUFFER_HEX_LEVEL (int ,int *,int ,int ) ;
 int ESP_LOG_DEBUG ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int esp_local_ctrl_command_cleanup (TYPE_1__*,void**) ;
 scalar_t__ esp_local_ctrl_command_dispatcher (TYPE_1__*,TYPE_1__*,void**) ;
 int local_ctrl_message__free_unpacked (TYPE_1__*,int *) ;
 int local_ctrl_message__get_packed_size (TYPE_1__*) ;
 int local_ctrl_message__init (TYPE_1__*) ;
 int local_ctrl_message__pack (TYPE_1__*,int *) ;
 TYPE_1__* local_ctrl_message__unpack (int *,int ,int const*) ;
 scalar_t__ malloc (int ) ;

esp_err_t esp_local_ctrl_data_handler(uint32_t session_id, const uint8_t *inbuf, ssize_t inlen,
                                      uint8_t **outbuf, ssize_t *outlen, void *priv_data)
{
    void *temp_ctx = ((void*)0);
    LocalCtrlMessage *req = local_ctrl_message__unpack(((void*)0), inlen, inbuf);
    if (!req) {
        ESP_LOGE(TAG, "Unable to unpack payload data");
        return ESP_ERR_INVALID_ARG;
    }

    LocalCtrlMessage resp;
    local_ctrl_message__init(&resp);
    resp.msg = req->msg + 1;

    esp_err_t ret = esp_local_ctrl_command_dispatcher(req, &resp, &temp_ctx);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "command dispatcher failed");
        esp_local_ctrl_command_cleanup(&resp, &temp_ctx);
        local_ctrl_message__free_unpacked(req, ((void*)0));
        return ESP_FAIL;
    }

    local_ctrl_message__free_unpacked(req, ((void*)0));

    *outlen = local_ctrl_message__get_packed_size(&resp);
    if (*outlen <= 0) {
        ESP_LOGE(TAG, "Invalid encoding for response");
        esp_local_ctrl_command_cleanup(&resp, &temp_ctx);
        return ESP_FAIL;
    }

    *outbuf = (uint8_t *) malloc(*outlen);
    if (!*outbuf) {
        ESP_LOGE(TAG, "System out of memory");
        esp_local_ctrl_command_cleanup(&resp, &temp_ctx);
        return ESP_ERR_NO_MEM;
    }

    local_ctrl_message__pack(&resp, *outbuf);
    esp_local_ctrl_command_cleanup(&resp, &temp_ctx);
    ESP_LOG_BUFFER_HEX_LEVEL(TAG, *outbuf, *outlen, ESP_LOG_DEBUG);
    return ESP_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ws_transport_opcodes_t ;
typedef int uint8_t ;
typedef int * esp_transport_handle_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int WS_FIN ;
 int WS_MASK ;
 int _ws_write (int *,int,int ,char const*,int,int) ;
 int ws_get_bin_opcode (int ) ;

int esp_transport_ws_send_raw(esp_transport_handle_t t, ws_transport_opcodes_t opcode, const char *b, int len, int timeout_ms)
{
    uint8_t op_code = ws_get_bin_opcode(opcode);
    if (t == ((void*)0)) {
        ESP_LOGE(TAG, "Transport must be a valid ws handle");
        return ESP_ERR_INVALID_ARG;
    }
    ESP_LOGD(TAG, "Sending raw ws message with opcode %d", op_code);
    return _ws_write(t, op_code | WS_FIN, WS_MASK, b, len, timeout_ms);
}

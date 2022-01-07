
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_websocket_client_handle_t ;
typedef int TickType_t ;


 int WS_TRANSPORT_OPCODES_TEXT ;
 int esp_websocket_client_send_with_opcode (int ,int ,char const*,int,int ) ;

int esp_websocket_client_send_text(esp_websocket_client_handle_t client, const char *data, int len, TickType_t timeout)
{
    return esp_websocket_client_send_with_opcode(client, WS_TRANSPORT_OPCODES_TEXT, data, len, timeout);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_transport_handle_t ;


 int ESP_LOGD (int ,char*) ;
 int TAG ;
 int WS_FIN ;
 int WS_MASK ;
 int WS_OPCODE_BINARY ;
 int WS_OPCODE_PING ;
 int _ws_write (int ,int,int ,char const*,int,int) ;

__attribute__((used)) static int ws_write(esp_transport_handle_t t, const char *b, int len, int timeout_ms)
{
    if (len == 0) {



        ESP_LOGD(TAG, "Write PING message");
        return _ws_write(t, WS_OPCODE_PING | WS_FIN, WS_MASK, ((void*)0), 0, timeout_ms);
    }
    return _ws_write(t, WS_OPCODE_BINARY | WS_FIN, WS_MASK, b, len, timeout_ms);
}

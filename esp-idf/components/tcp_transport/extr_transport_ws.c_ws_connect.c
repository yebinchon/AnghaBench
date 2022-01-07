
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; char* path; char* sub_protocol; int parent; } ;
typedef TYPE_1__ transport_ws_t ;
typedef int random_key ;
typedef int expected_server_sha1 ;
typedef int expected_server_magic ;
typedef int expected_server_key ;
typedef int esp_transport_handle_t ;
typedef int client_key ;


 int DEFAULT_WS_BUFFER ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*,...) ;
 int TAG ;
 scalar_t__ esp_transport_connect (int ,char const*,int,int) ;
 TYPE_1__* esp_transport_get_context_data (int ) ;
 int esp_transport_read (int ,char*,int,int) ;
 scalar_t__ esp_transport_write (int ,char*,int,int) ;
 char* get_http_header (char*,char*) ;
 int getrandom (unsigned char*,int,int ) ;
 int mbedtls_base64_encode (unsigned char*,int,size_t*,unsigned char*,int) ;
 int mbedtls_sha1_ret (unsigned char*,size_t,unsigned char*) ;
 int snprintf (char*,int,char*,...) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static int ws_connect(esp_transport_handle_t t, const char *host, int port, int timeout_ms)
{
    transport_ws_t *ws = esp_transport_get_context_data(t);
    if (esp_transport_connect(ws->parent, host, port, timeout_ms) < 0) {
        ESP_LOGE(TAG, "Error connecting to host %s:%d", host, port);
        return -1;
    }

    unsigned char random_key[16];
    getrandom(random_key, sizeof(random_key), 0);


    unsigned char client_key[28] = {0};

    size_t outlen = 0;
    mbedtls_base64_encode(client_key, sizeof(client_key), &outlen, random_key, sizeof(random_key));
    int len = snprintf(ws->buffer, DEFAULT_WS_BUFFER,
                         "GET %s HTTP/1.1\r\n"
                         "Connection: Upgrade\r\n"
                         "Host: %s:%d\r\n"
                         "Upgrade: websocket\r\n"
                         "Sec-WebSocket-Version: 13\r\n"
                         "Sec-WebSocket-Key: %s\r\n"
                         "User-Agent: ESP32 Websocket Client\r\n",
                         ws->path,
                         host, port,
                         client_key);
    if (len <= 0 || len >= DEFAULT_WS_BUFFER) {
        ESP_LOGE(TAG, "Error in request generation, %d", len);
        return -1;
    }
    if (ws->sub_protocol) {
        int r = snprintf(ws->buffer + len, DEFAULT_WS_BUFFER - len, "Sec-WebSocket-Protocol: %s\r\n", ws->sub_protocol);
        len += r;
        if (r <= 0 || len >= DEFAULT_WS_BUFFER) {
            ESP_LOGE(TAG, "Error in request generation"
                          "(snprintf of subprotocol returned %d, desired request len: %d, buffer size: %d", r, len, DEFAULT_WS_BUFFER);
            return -1;
        }
    }
    int r = snprintf(ws->buffer + len, DEFAULT_WS_BUFFER - len, "\r\n");
    len += r;
    if (r <= 0 || len >= DEFAULT_WS_BUFFER) {
        ESP_LOGE(TAG, "Error in request generation"
                       "(snprintf of header terminal returned %d, desired request len: %d, buffer size: %d", r, len, DEFAULT_WS_BUFFER);
        return -1;
    }
    ESP_LOGD(TAG, "Write upgrate request\r\n%s", ws->buffer);
    if (esp_transport_write(ws->parent, ws->buffer, len, timeout_ms) <= 0) {
        ESP_LOGE(TAG, "Error write Upgrade header %s", ws->buffer);
        return -1;
    }
    int header_len = 0;
    do {
        if ((len = esp_transport_read(ws->parent, ws->buffer + header_len, DEFAULT_WS_BUFFER - header_len, timeout_ms)) <= 0) {
            ESP_LOGE(TAG, "Error read response for Upgrade header %s", ws->buffer);
            return -1;
        }
        header_len += len;
        ws->buffer[header_len] = '\0';
        ESP_LOGD(TAG, "Read header chunk %d, current header size: %d", len, header_len);
    } while (((void*)0) == strstr(ws->buffer, "\r\n\r\n") && header_len < DEFAULT_WS_BUFFER);

    char *server_key = get_http_header(ws->buffer, "Sec-WebSocket-Accept:");
    if (server_key == ((void*)0)) {
        ESP_LOGE(TAG, "Sec-WebSocket-Accept not found");
        return -1;
    }


    unsigned char expected_server_sha1[20];

    unsigned char expected_server_key[33] = {0};

    const char expected_server_magic[] = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    unsigned char expected_server_text[sizeof(client_key) + sizeof(expected_server_magic) + 1];
    strcpy((char*)expected_server_text, (char*)client_key);
    strcat((char*)expected_server_text, expected_server_magic);

    size_t key_len = strlen((char*)expected_server_text);
    mbedtls_sha1_ret(expected_server_text, key_len, expected_server_sha1);
    mbedtls_base64_encode(expected_server_key, sizeof(expected_server_key), &outlen, expected_server_sha1, sizeof(expected_server_sha1));
    expected_server_key[ (outlen < sizeof(expected_server_key)) ? outlen : (sizeof(expected_server_key) - 1) ] = 0;
    ESP_LOGD(TAG, "server key=%s, send_key=%s, expected_server_key=%s", (char *)server_key, (char*)client_key, expected_server_key);
    if (strcmp((char*)expected_server_key, (char*)server_key) != 0) {
        ESP_LOGE(TAG, "Invalid websocket key");
        return -1;
    }
    return 0;
}

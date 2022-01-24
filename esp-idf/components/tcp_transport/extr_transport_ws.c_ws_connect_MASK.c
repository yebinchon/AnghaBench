#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* buffer; char* path; char* sub_protocol; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ transport_ws_t ;
typedef  int /*<<< orphan*/  random_key ;
typedef  int /*<<< orphan*/  expected_server_sha1 ;
typedef  int /*<<< orphan*/  expected_server_magic ;
typedef  int /*<<< orphan*/  expected_server_key ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;
typedef  int /*<<< orphan*/  client_key ;

/* Variables and functions */
 int DEFAULT_WS_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int,size_t*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,size_t,unsigned char*) ; 
 int FUNC10 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 size_t FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 (char*,char*) ; 

__attribute__((used)) static int FUNC16(esp_transport_handle_t t, const char *host, int port, int timeout_ms)
{
    transport_ws_t *ws = FUNC3(t);
    if (FUNC2(ws->parent, host, port, timeout_ms) < 0) {
        FUNC1(TAG, "Error connecting to host %s:%d", host, port);
        return -1;
    }

    unsigned char random_key[16];
    FUNC7(random_key, sizeof(random_key), 0);

    // Size of base64 coded string is equal '((input_size * 4) / 3) + (input_size / 96) + 6' including Z-term
    unsigned char client_key[28] = {0};

    size_t outlen = 0;
    FUNC8(client_key, sizeof(client_key), &outlen, random_key, sizeof(random_key));
    int len = FUNC10(ws->buffer, DEFAULT_WS_BUFFER,
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
        FUNC1(TAG, "Error in request generation, %d", len);
        return -1;
    }
    if (ws->sub_protocol) {
        int r = FUNC10(ws->buffer + len, DEFAULT_WS_BUFFER - len, "Sec-WebSocket-Protocol: %s\r\n", ws->sub_protocol);
        len += r;
        if (r <= 0 || len >= DEFAULT_WS_BUFFER) {
            FUNC1(TAG, "Error in request generation"
                          "(snprintf of subprotocol returned %d, desired request len: %d, buffer size: %d", r, len, DEFAULT_WS_BUFFER);
            return -1;
        }
    }
    int r = FUNC10(ws->buffer + len, DEFAULT_WS_BUFFER - len, "\r\n");
    len += r;
    if (r <= 0 || len >= DEFAULT_WS_BUFFER) {
        FUNC1(TAG, "Error in request generation"
                       "(snprintf of header terminal returned %d, desired request len: %d, buffer size: %d", r, len, DEFAULT_WS_BUFFER);
        return -1;
    }
    FUNC0(TAG, "Write upgrate request\r\n%s", ws->buffer);
    if (FUNC5(ws->parent, ws->buffer, len, timeout_ms) <= 0) {
        FUNC1(TAG, "Error write Upgrade header %s", ws->buffer);
        return -1;
    }
    int header_len = 0;
    do {
        if ((len = FUNC4(ws->parent, ws->buffer + header_len, DEFAULT_WS_BUFFER - header_len, timeout_ms)) <= 0) {
            FUNC1(TAG, "Error read response for Upgrade header %s", ws->buffer);
            return -1;
        }
        header_len += len;
        ws->buffer[header_len] = '\0';
        FUNC0(TAG, "Read header chunk %d, current header size: %d", len, header_len);
    } while (NULL == FUNC15(ws->buffer, "\r\n\r\n") && header_len < DEFAULT_WS_BUFFER);

    char *server_key = FUNC6(ws->buffer, "Sec-WebSocket-Accept:");
    if (server_key == NULL) {
        FUNC1(TAG, "Sec-WebSocket-Accept not found");
        return -1;
    }

    // See mbedtls_sha1_ret() arg size
    unsigned char expected_server_sha1[20];
    // Size of base64 coded string see above
    unsigned char expected_server_key[33] = {0};
    // If you are interested, see https://tools.ietf.org/html/rfc6455
    const char expected_server_magic[] = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    unsigned char expected_server_text[sizeof(client_key) + sizeof(expected_server_magic) + 1];
    FUNC13((char*)expected_server_text, (char*)client_key);
    FUNC11((char*)expected_server_text, expected_server_magic);

    size_t key_len = FUNC14((char*)expected_server_text);
    FUNC9(expected_server_text, key_len, expected_server_sha1);
    FUNC8(expected_server_key, sizeof(expected_server_key),  &outlen, expected_server_sha1, sizeof(expected_server_sha1));
    expected_server_key[ (outlen < sizeof(expected_server_key)) ? outlen : (sizeof(expected_server_key) - 1) ] = 0;
    FUNC0(TAG, "server key=%s, send_key=%s, expected_server_key=%s", (char *)server_key, (char*)client_key, expected_server_key);
    if (FUNC12((char*)expected_server_key, (char*)server_key) != 0) {
        FUNC1(TAG, "Invalid websocket key");
        return -1;
    }
    return 0;
}
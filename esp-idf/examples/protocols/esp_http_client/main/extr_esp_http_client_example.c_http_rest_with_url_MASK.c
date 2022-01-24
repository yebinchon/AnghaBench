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
typedef  int /*<<< orphan*/  esp_http_client_handle_t ;
struct TYPE_3__ {char* url; int /*<<< orphan*/  event_handler; } ;
typedef  TYPE_1__ esp_http_client_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  HTTP_METHOD_DELETE ; 
 int /*<<< orphan*/  HTTP_METHOD_HEAD ; 
 int /*<<< orphan*/  HTTP_METHOD_PATCH ; 
 int /*<<< orphan*/  HTTP_METHOD_POST ; 
 int /*<<< orphan*/  HTTP_METHOD_PUT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  _http_event_handler ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static void FUNC12(void)
{
    esp_http_client_config_t config = {
        .url = "http://httpbin.org/get",
        .event_handler = _http_event_handler,
    };
    esp_http_client_handle_t client = FUNC6(&config);

    // GET
    esp_err_t err = FUNC7(client);
    if (err == ESP_OK) {
        FUNC1(TAG, "HTTP GET Status = %d, content_length = %d",
                FUNC5(client),
                FUNC4(client));
    } else {
        FUNC0(TAG, "HTTP GET request failed: %s", FUNC2(err));
    }

    // POST
    const char *post_data = "field1=value1&field2=value2";
    FUNC10(client, "http://httpbin.org/post");
    FUNC8(client, HTTP_METHOD_POST);
    FUNC9(client, post_data, FUNC11(post_data));
    err = FUNC7(client);
    if (err == ESP_OK) {
        FUNC1(TAG, "HTTP POST Status = %d, content_length = %d",
                FUNC5(client),
                FUNC4(client));
    } else {
        FUNC0(TAG, "HTTP POST request failed: %s", FUNC2(err));
    }

    //PUT
    FUNC10(client, "http://httpbin.org/put");
    FUNC8(client, HTTP_METHOD_PUT);
    err = FUNC7(client);
    if (err == ESP_OK) {
        FUNC1(TAG, "HTTP PUT Status = %d, content_length = %d",
                FUNC5(client),
                FUNC4(client));
    } else {
        FUNC0(TAG, "HTTP PUT request failed: %s", FUNC2(err));
    }

    //PATCH
    FUNC10(client, "http://httpbin.org/patch");
    FUNC8(client, HTTP_METHOD_PATCH);
    FUNC9(client, NULL, 0);
    err = FUNC7(client);
    if (err == ESP_OK) {
        FUNC1(TAG, "HTTP PATCH Status = %d, content_length = %d",
                FUNC5(client),
                FUNC4(client));
    } else {
        FUNC0(TAG, "HTTP PATCH request failed: %s", FUNC2(err));
    }

    //DELETE
    FUNC10(client, "http://httpbin.org/delete");
    FUNC8(client, HTTP_METHOD_DELETE);
    err = FUNC7(client);
    if (err == ESP_OK) {
        FUNC1(TAG, "HTTP DELETE Status = %d, content_length = %d",
                FUNC5(client),
                FUNC4(client));
    } else {
        FUNC0(TAG, "HTTP DELETE request failed: %s", FUNC2(err));
    }

    //HEAD
    FUNC10(client, "http://httpbin.org/get");
    FUNC8(client, HTTP_METHOD_HEAD);
    err = FUNC7(client);
    if (err == ESP_OK) {
        FUNC1(TAG, "HTTP HEAD Status = %d, content_length = %d",
                FUNC5(client),
                FUNC4(client));
    } else {
        FUNC0(TAG, "HTTP HEAD request failed: %s", FUNC2(err));
    }

    FUNC3(client);
}
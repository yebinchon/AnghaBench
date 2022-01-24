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
struct TYPE_3__ {char* url; int is_async; int timeout_ms; int /*<<< orphan*/  event_handler; } ;
typedef  TYPE_1__ esp_http_client_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_HTTP_EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  HTTP_METHOD_POST ; 
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
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11(void)
{
    esp_http_client_config_t config = {
        .url = "https://postman-echo.com/post",
        .event_handler = _http_event_handler,
        .is_async = true,
        .timeout_ms = 5000,
    };
    esp_http_client_handle_t client = FUNC6(&config);
    esp_err_t err;
    const char *post_data = "Using a Palantír requires a person with great strength of will and wisdom. The Palantíri were meant to "
                            "be used by the Dúnedain to communicate throughout the Realms in Exile. During the War of the Ring, "
                            "the Palantíri were used by many individuals. Sauron used the Ithil-stone to take advantage of the users "
                            "of the other two stones, the Orthanc-stone and Anor-stone, but was also susceptible to deception himself.";
    FUNC8(client, HTTP_METHOD_POST);
    FUNC9(client, post_data, FUNC10(post_data));
    while (1) {
        err = FUNC7(client);
        if (err != ESP_ERR_HTTP_EAGAIN) {
            break;
        }
    }
    if (err == ESP_OK) {
        FUNC1(TAG, "HTTPS Status = %d, content_length = %d",
                FUNC5(client),
                FUNC4(client));
    } else {
        FUNC0(TAG, "Error perform http request %s", FUNC2(err));
    }
    FUNC3(client);
}
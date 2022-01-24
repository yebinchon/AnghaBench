#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* esp_http_client_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_14__ {int state; int first_line_prepared; int /*<<< orphan*/  parser; int /*<<< orphan*/  is_async; TYPE_1__* response; int /*<<< orphan*/  is_chunk_complete; int /*<<< orphan*/  post_len; scalar_t__ process_again; } ;
struct TYPE_13__ {int /*<<< orphan*/  content_length; int /*<<< orphan*/  data_process; int /*<<< orphan*/  is_chunked; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ESP_ERR_HTTP_CONNECTING ; 
 int /*<<< orphan*/  ESP_ERR_HTTP_EAGAIN ; 
 int /*<<< orphan*/  ESP_ERR_HTTP_FETCH_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HTTP_EVENT_ON_FINISH ; 
#define  HTTP_STATE_CONNECTED 132 
#define  HTTP_STATE_INIT 131 
#define  HTTP_STATE_REQ_COMPLETE_DATA 130 
#define  HTTP_STATE_REQ_COMPLETE_HEADER 129 
#define  HTTP_STATE_RES_COMPLETE_HEADER 128 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC12(esp_http_client_handle_t client)
{
    esp_err_t err;
    do {
        if (client->process_again) {
            FUNC7(client);
        }
        switch (client->state) {
        /* In case of blocking esp_http_client_perform(), the following states will fall through one after the after;
           in case of non-blocking esp_http_client_perform(), if there is an error condition, like EINPROGRESS or EAGAIN,
           then the esp_http_client_perform() API will return ESP_ERR_HTTP_EAGAIN error. The user may call
           esp_http_client_perform API again, and for this reason, we maintain the states */
            case HTTP_STATE_INIT:
                if ((err = FUNC4(client)) != ESP_OK) {
                    if (client->is_async && err == ESP_ERR_HTTP_CONNECTING) {
                        return ESP_ERR_HTTP_EAGAIN;
                    }
                    return err;
                }
                /* falls through */
            case HTTP_STATE_CONNECTED:
                if ((err = FUNC8(client, client->post_len)) != ESP_OK) {
                    if (client->is_async && errno == EAGAIN) {
                        return ESP_ERR_HTTP_EAGAIN;
                    }
                    return err;
                }
                /* falls through */
            case HTTP_STATE_REQ_COMPLETE_HEADER:
                if ((err = FUNC9(client)) != ESP_OK) {
                    if (client->is_async && errno == EAGAIN) {
                        return ESP_ERR_HTTP_EAGAIN;
                    }
                    return err;
                }
                /* falls through */
            case HTTP_STATE_REQ_COMPLETE_DATA:
                if (FUNC5(client) < 0) {
                    if (client->is_async && errno == EAGAIN) {
                        return ESP_ERR_HTTP_EAGAIN;
                    }
                    return ESP_ERR_HTTP_FETCH_HEADER;
                }
                /* falls through */
            case HTTP_STATE_RES_COMPLETE_HEADER:
                if ((err = FUNC2(client)) != ESP_OK) {
                    FUNC1(TAG, "Error response");
                    return err;
                }
                while (client->response->is_chunked && !client->is_chunk_complete) {
                    if (FUNC6(client) <= 0) {
                        if (client->is_async && errno == EAGAIN) {
                            return ESP_ERR_HTTP_EAGAIN;
                        }
                        FUNC0(TAG, "Read finish or server requests close");
                        break;
                    }
                }
                while (client->response->data_process < client->response->content_length) {
                    if (FUNC6(client) <= 0) {
                        if (client->is_async && errno == EAGAIN) {
                            return ESP_ERR_HTTP_EAGAIN;
                        }
                        FUNC0(TAG, "Read finish or server requests close");
                        break;
                    }
                }
                FUNC10(client, HTTP_EVENT_ON_FINISH, NULL, 0);

                if (!FUNC11(client->parser)) {
                    FUNC0(TAG, "Close connection");
                    FUNC3(client);
                } else {
                    if (client->state > HTTP_STATE_CONNECTED) {
                        client->state = HTTP_STATE_CONNECTED;
                        client->first_line_prepared = false;
                    }
                }
                break;
                default:
                break;
        }
    } while (client->process_again);
    return ESP_OK;
}
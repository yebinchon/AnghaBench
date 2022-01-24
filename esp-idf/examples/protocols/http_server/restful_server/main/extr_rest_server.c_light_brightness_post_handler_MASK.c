#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* scratch; } ;
typedef  TYPE_1__ rest_server_context_t ;
struct TYPE_9__ {int content_len; scalar_t__ user_ctx; } ;
typedef  TYPE_2__ httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  cJSON ;
struct TYPE_10__ {int valueint; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HTTPD_500_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  REST_TAG ; 
 int SCRATCH_BUFSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 

__attribute__((used)) static esp_err_t FUNC7(httpd_req_t *req)
{
    int total_len = req->content_len;
    int cur_len = 0;
    char *buf = ((rest_server_context_t *)(req->user_ctx))->scratch;
    int received = 0;
    if (total_len >= SCRATCH_BUFSIZE) {
        /* Respond with 500 Internal Server Error */
        FUNC5(req, HTTPD_500_INTERNAL_SERVER_ERROR, "content too long");
        return ESP_FAIL;
    }
    while (cur_len < total_len) {
        received = FUNC4(req, buf + cur_len, total_len);
        if (received <= 0) {
            /* Respond with 500 Internal Server Error */
            FUNC5(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to post control value");
            return ESP_FAIL;
        }
        cur_len += received;
    }
    buf[total_len] = '\0';

    cJSON *root = FUNC3(buf);
    int red = FUNC2(root, "red")->valueint;
    int green = FUNC2(root, "green")->valueint;
    int blue = FUNC2(root, "blue")->valueint;
    FUNC0(REST_TAG, "Light control: red = %d, green = %d, blue = %d", red, green, blue);
    FUNC1(root);
    FUNC6(req, "Post control value successfully");
    return ESP_OK;
}
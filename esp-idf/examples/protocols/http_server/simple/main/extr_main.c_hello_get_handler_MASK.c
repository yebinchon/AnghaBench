#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  param ;
struct TYPE_9__ {scalar_t__ user_ctx; } ;
typedef  TYPE_1__ httpd_req_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,char*,int) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*,char*,size_t) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*) ; 
 char* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static esp_err_t FUNC11(httpd_req_t *req)
{
    char*  buf;
    size_t buf_len;

    /* Get header value string length and allocate memory for length + 1,
     * extra byte for null termination */
    buf_len = FUNC3(req, "Host") + 1;
    if (buf_len > 1) {
        buf = FUNC9(buf_len);
        /* Copy null terminated value string into buffer */
        if (FUNC4(req, "Host", buf, buf_len) == ESP_OK) {
            FUNC0(TAG, "Found header => Host: %s", buf);
        }
        FUNC1(buf);
    }

    buf_len = FUNC3(req, "Test-Header-2") + 1;
    if (buf_len > 1) {
        buf = FUNC9(buf_len);
        if (FUNC4(req, "Test-Header-2", buf, buf_len) == ESP_OK) {
            FUNC0(TAG, "Found header => Test-Header-2: %s", buf);
        }
        FUNC1(buf);
    }

    buf_len = FUNC3(req, "Test-Header-1") + 1;
    if (buf_len > 1) {
        buf = FUNC9(buf_len);
        if (FUNC4(req, "Test-Header-1", buf, buf_len) == ESP_OK) {
            FUNC0(TAG, "Found header => Test-Header-1: %s", buf);
        }
        FUNC1(buf);
    }

    /* Read URL query string length and allocate memory for length + 1,
     * extra byte for null termination */
    buf_len = FUNC5(req) + 1;
    if (buf_len > 1) {
        buf = FUNC9(buf_len);
        if (FUNC6(req, buf, buf_len) == ESP_OK) {
            FUNC0(TAG, "Found URL query => %s", buf);
            char param[32];
            /* Get value of expected key from query string */
            if (FUNC2(buf, "query1", param, sizeof(param)) == ESP_OK) {
                FUNC0(TAG, "Found URL query parameter => query1=%s", param);
            }
            if (FUNC2(buf, "query3", param, sizeof(param)) == ESP_OK) {
                FUNC0(TAG, "Found URL query parameter => query3=%s", param);
            }
            if (FUNC2(buf, "query2", param, sizeof(param)) == ESP_OK) {
                FUNC0(TAG, "Found URL query parameter => query2=%s", param);
            }
        }
        FUNC1(buf);
    }

    /* Set some custom headers */
    FUNC8(req, "Custom-Header-1", "Custom-Value-1");
    FUNC8(req, "Custom-Header-2", "Custom-Value-2");

    /* Send response with custom headers and body set as the
     * string passed in user context*/
    const char* resp_str = (const char*) req->user_ctx;
    FUNC7(req, resp_str, FUNC10(resp_str));

    /* After sending the HTTP response the old HTTP request
     * headers are lost. Check if HTTP request headers can be read now. */
    if (FUNC3(req, "Host") == 0) {
        FUNC0(TAG, "Request headers lost");
    }
    return ESP_OK;
}
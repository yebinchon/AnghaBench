#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HTTPD_404_NOT_FOUND ; 
 int HTTPD_SOCK_ERR_TIMEOUT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  echo ; 
 int /*<<< orphan*/  hello ; 
 int /*<<< orphan*/ * http_404_error_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static esp_err_t FUNC7(httpd_req_t *req)
{
    char buf;
    int ret;

    if ((ret = FUNC3(req, &buf, 1)) <= 0) {
        if (ret == HTTPD_SOCK_ERR_TIMEOUT) {
            FUNC5(req);
        }
        return ESP_FAIL;
    }

    if (buf == '0') {
        /* URI handlers can be unregistered using the uri string */
        FUNC0(TAG, "Unregistering /hello and /echo URIs");
        FUNC6(req->handle, "/hello");
        FUNC6(req->handle, "/echo");
        /* Register the custom error handler */
        FUNC1(req->handle, HTTPD_404_NOT_FOUND, http_404_error_handler);
    }
    else {
        FUNC0(TAG, "Registering /hello and /echo URIs");
        FUNC2(req->handle, &hello);
        FUNC2(req->handle, &echo);
        /* Unregister custom error handler */
        FUNC1(req->handle, HTTPD_404_NOT_FOUND, NULL);
    }

    /* Respond with empty body */
    FUNC4(req, NULL, 0);
    return ESP_OK;
}
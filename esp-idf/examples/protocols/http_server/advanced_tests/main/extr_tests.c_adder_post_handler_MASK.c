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
typedef  int /*<<< orphan*/  outbuf ;
struct TYPE_6__ {scalar_t__ sess_ctx; int /*<<< orphan*/  free_ctx; } ;
typedef  TYPE_1__ httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int HTTPD_SOCK_ERR_TIMEOUT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  adder_free_func ; 
 int FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static esp_err_t FUNC8(httpd_req_t *req)
{
    char buf[10];
    char outbuf[50];
    int  ret;

    /* Read data received in the request */
    ret = FUNC2(req, buf, sizeof(buf));
    if (ret <= 0) {
        if (ret == HTTPD_SOCK_ERR_TIMEOUT) {
            FUNC4(req);
        }
        return ESP_FAIL;
    }

    buf[ret] = '\0';
    int val = FUNC1(buf);
    FUNC0(TAG, "/adder handler read %d", val);

    if (! req->sess_ctx) {
        FUNC0(TAG, "/adder allocating new session");
        req->sess_ctx = FUNC5(sizeof(int));
        req->free_ctx = adder_free_func;
        *(int *)req->sess_ctx = 0;
    }
    int *adder = (int *)req->sess_ctx;
    *adder += val;

    FUNC6(outbuf, sizeof(outbuf),"%d", *adder);
    FUNC3(req, outbuf, FUNC7(outbuf));
    return ESP_OK;
}
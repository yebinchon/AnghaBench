#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int HTTPD_SOCK_ERR_TIMEOUT ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static esp_err_t FUNC5(httpd_req_t *req)
{
    /* Only echo the first 10 bytes of the request, leaving the rest of the
     * request data as is.
     */
    char buf[11];
    int  ret;

    /* Read data received in the request */
    ret = FUNC1(req, buf, sizeof(buf) - 1);
    if (ret <= 0) {
        if (ret == HTTPD_SOCK_ERR_TIMEOUT) {
            FUNC3(req);
        }
        return ESP_FAIL;
    }

    buf[ret] = '\0';
    FUNC0(TAG, "leftover data handler read %s", buf);
    FUNC2(req, buf, FUNC4(buf));
    return ESP_OK;
}
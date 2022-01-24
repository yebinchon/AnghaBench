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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_NOT_FOUND ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  HTTPD_400_BAD_REQUEST ; 
 int /*<<< orphan*/  HTTPD_500_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  HTTPD_TYPE_TEXT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static esp_err_t FUNC11(httpd_req_t *req)
{
    FUNC7(req, HTTPD_TYPE_TEXT);
    int buf_len;
    char *buf;

    buf_len = FUNC3(req, "Header1");
    if (buf_len > 0) {
        buf = FUNC8(++buf_len);
        if (!buf) {
            FUNC0(TAG, "Failed to allocate memory of %d bytes!", buf_len);
            FUNC6(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Memory allocation failed");
            return ESP_ERR_NO_MEM;
        }
        /* Copy null terminated value string into buffer */
        if (FUNC4(req, "Header1", buf, buf_len) == ESP_OK) {
            FUNC1(TAG, "Header1 content: %s", buf);
            if (FUNC9("Value1", buf) != 0) {
                FUNC6(req, HTTPD_400_BAD_REQUEST, "Wrong value of Header1 received");
                FUNC2(buf);
                return ESP_ERR_INVALID_ARG;
            } else {
                FUNC1(TAG, "Expected value and received value matched for Header1");
            }
        } else {
            FUNC0(TAG, "Error in getting value of Header1");
            FUNC6(req, HTTPD_400_BAD_REQUEST, "Error in getting value of Header1");
            FUNC2(buf);
            return ESP_FAIL;
        }
        FUNC2(buf);
    } else {
        FUNC0(TAG, "Header1 not found");
        FUNC6(req, HTTPD_400_BAD_REQUEST, "Header1 not found");
        return ESP_ERR_NOT_FOUND;
    }

    buf_len = FUNC3(req, "Header3");
    if (buf_len > 0) {
        buf = FUNC8(++buf_len);
        if (!buf) {
            FUNC0(TAG, "Failed to allocate memory of %d bytes!", buf_len);
            FUNC6(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Memory allocation failed");
            return ESP_ERR_NO_MEM;
        }
        /* Copy null terminated value string into buffer */
        if (FUNC4(req, "Header3", buf, buf_len) == ESP_OK) {
            FUNC1(TAG, "Header3 content: %s", buf);
            if (FUNC9("Value3", buf) != 0) {
                FUNC6(req, HTTPD_400_BAD_REQUEST, "Wrong value of Header3 received");
                FUNC2(buf);
                return ESP_ERR_INVALID_ARG;
            } else {
                FUNC1(TAG, "Expected value and received value matched for Header3");
            }
        } else {
            FUNC0(TAG, "Error in getting value of Header3");
            FUNC6(req, HTTPD_400_BAD_REQUEST, "Error in getting value of Header3");
            FUNC2(buf);
            return ESP_FAIL;
        }
        FUNC2(buf);
    } else {
        FUNC0(TAG, "Header3 not found");
        FUNC6(req, HTTPD_400_BAD_REQUEST, "Header3 not found");
        return ESP_ERR_NOT_FOUND;
    }

    buf_len = FUNC3(req, "Header2");
    buf = FUNC8(++buf_len);
    if (!buf) {
        FUNC0(TAG, "Failed to allocate memory of %d bytes!", buf_len);
        FUNC6(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Memory allocation failed");
        return ESP_ERR_NO_MEM;
    }
    if (FUNC4(req, "Header2", buf, buf_len) == ESP_OK) {
        FUNC1(TAG, "Header2 content: %s", buf);
        FUNC5(req, buf, FUNC10(buf));
    } else {
        FUNC0(TAG, "Header2 not found");
        FUNC6(req, HTTPD_400_BAD_REQUEST, "Header2 not found");
        return ESP_FAIL;
    }

    return ESP_OK;
}
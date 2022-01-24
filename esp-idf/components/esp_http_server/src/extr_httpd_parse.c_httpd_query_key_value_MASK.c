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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_HTTPD_RESULT_TRUNC ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t const) ; 
 int /*<<< orphan*/  TAG ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,size_t) ; 

esp_err_t FUNC7(const char *qry_str, const char *key, char *val, size_t val_size)
{
    if (qry_str == NULL || key == NULL || val == NULL) {
        return ESP_ERR_INVALID_ARG;
    }

    const char   *qry_ptr = qry_str;
    const size_t  buf_len = val_size;

    while (FUNC5(qry_ptr)) {
        /* Search for the '=' character. Else, it would mean
         * that the parameter is invalid */
        const char *val_ptr = FUNC3(qry_ptr, '=');
        if (!val_ptr) {
            break;
        }
        size_t offset = val_ptr - qry_ptr;

        /* If the key, does not match, continue searching.
         * Compare lengths first as key from url is not
         * null terminated (has '=' in the end) */
        if ((offset != FUNC5(key)) ||
            (FUNC6(qry_ptr, key, offset))) {
            /* Get the name=val string. Multiple name=value pairs
             * are separated by '&' */
            qry_ptr = FUNC3(val_ptr, '&');
            if (!qry_ptr) {
                break;
            }
            qry_ptr++;
            continue;
        }

        /* Locate start of next query */
        qry_ptr = FUNC3(++val_ptr, '&');
        /* Or this could be the last query, in which
         * case get to the end of query string */
        if (!qry_ptr) {
            qry_ptr = val_ptr + FUNC5(val_ptr);
        }

        /* Update value length, including one byte for null */
        val_size = qry_ptr - val_ptr + 1;

        /* Copy value to the caller's buffer. */
        FUNC4(val, val_ptr, FUNC2(val_size, buf_len));

        /* If buffer length is smaller than needed, return truncation error */
        if (buf_len < val_size) {
            return ESP_ERR_HTTPD_RESULT_TRUNC;
        }
        return ESP_OK;
    }
    FUNC0(TAG, FUNC1("key %s not found"), key);
    return ESP_ERR_NOT_FOUND;
}
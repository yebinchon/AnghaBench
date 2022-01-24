#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct httpd_req_aux {int first_chunk_sent; char* scratch; unsigned int resp_hdrs_count; TYPE_1__* resp_hdrs; int /*<<< orphan*/  content_type; int /*<<< orphan*/  status; scalar_t__ req_hdrs_count; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  len_str ;
struct TYPE_7__ {struct httpd_req_aux* aux; } ;
typedef  TYPE_2__ httpd_req_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {char* field; char* value; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_HTTPD_INVALID_REQ ; 
 scalar_t__ ESP_ERR_HTTPD_RESP_HDR ; 
 scalar_t__ ESP_ERR_HTTPD_RESP_SEND ; 
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_OK ; 
 int HTTPD_RESP_USE_STRLEN ; 
 scalar_t__ FUNC0 (TYPE_2__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (char*,int,char const*,int,...) ; 
 size_t FUNC3 (char const*) ; 

esp_err_t FUNC4(httpd_req_t *r, const char *buf, ssize_t buf_len)
{
    if (r == NULL) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!FUNC1(r)) {
        return ESP_ERR_HTTPD_INVALID_REQ;
    }

    if (buf_len == HTTPD_RESP_USE_STRLEN) {
        buf_len = FUNC3(buf);
    }

    struct httpd_req_aux *ra = r->aux;
    const char *httpd_chunked_hdr_str = "HTTP/1.1 %s\r\nContent-Type: %s\r\nTransfer-Encoding: chunked\r\n";
    const char *colon_separator = ": ";
    const char *cr_lf_seperator = "\r\n";

    /* Request headers are no longer available */
    ra->req_hdrs_count = 0;

    if (!ra->first_chunk_sent) {
        /* Size of essential headers is limited by scratch buffer size */
        if (FUNC2(ra->scratch, sizeof(ra->scratch), httpd_chunked_hdr_str,
                     ra->status, ra->content_type) >= sizeof(ra->scratch)) {
            return ESP_ERR_HTTPD_RESP_HDR;
        }

        /* Sending essential headers */
        if (FUNC0(r, ra->scratch, FUNC3(ra->scratch)) != ESP_OK) {
            return ESP_ERR_HTTPD_RESP_SEND;
        }

        /* Sending additional headers based on set_header */
        for (unsigned i = 0; i < ra->resp_hdrs_count; i++) {
            /* Send header field */
            if (FUNC0(r, ra->resp_hdrs[i].field, FUNC3(ra->resp_hdrs[i].field)) != ESP_OK) {
                return ESP_ERR_HTTPD_RESP_SEND;
            }
            /* Send ': ' */
            if (FUNC0(r, colon_separator, FUNC3(colon_separator)) != ESP_OK) {
                return ESP_ERR_HTTPD_RESP_SEND;
            }
            /* Send header value */
            if (FUNC0(r, ra->resp_hdrs[i].value, FUNC3(ra->resp_hdrs[i].value)) != ESP_OK) {
                return ESP_ERR_HTTPD_RESP_SEND;
            }
            /* Send CR + LF */
            if (FUNC0(r, cr_lf_seperator, FUNC3(cr_lf_seperator)) != ESP_OK) {
                return ESP_ERR_HTTPD_RESP_SEND;
            }
        }

        /* End header section */
        if (FUNC0(r, cr_lf_seperator, FUNC3(cr_lf_seperator)) != ESP_OK) {
            return ESP_ERR_HTTPD_RESP_SEND;
        }
        ra->first_chunk_sent = true;
    }

    /* Sending chunked content */
    char len_str[10];
    FUNC2(len_str, sizeof(len_str), "%x\r\n", buf_len);
    if (FUNC0(r, len_str, FUNC3(len_str)) != ESP_OK) {
        return ESP_ERR_HTTPD_RESP_SEND;
    }

    if (buf) {
        if (FUNC0(r, buf, (size_t) buf_len) != ESP_OK) {
            return ESP_ERR_HTTPD_RESP_SEND;
        }
    }

    /* Indicate end of chunk */
    if (FUNC0(r, "\r\n", FUNC3("\r\n")) != ESP_OK) {
        return ESP_ERR_HTTPD_RESP_SEND;
    }
    return ESP_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct http_parser_url {int field_set; TYPE_2__* field_data; } ;
struct TYPE_8__ {struct http_parser_url url_parse_res; } ;
struct TYPE_11__ {int /*<<< orphan*/  user_ctx; int /*<<< orphan*/  uri; int /*<<< orphan*/  method; } ;
struct httpd_data {TYPE_1__ hd_req_aux; TYPE_4__ hd_req; } ;
struct TYPE_10__ {scalar_t__ (* handler ) (TYPE_4__*) ;int /*<<< orphan*/  user_ctx; } ;
typedef  TYPE_3__ httpd_uri_t ;
typedef  TYPE_4__ httpd_req_t ;
typedef  int httpd_err_code_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_9__ {int off; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ ESP_OK ; 
#define  HTTPD_404_NOT_FOUND 129 
#define  HTTPD_405_METHOD_NOT_ALLOWED 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int UF_PATH ; 
 TYPE_3__* FUNC3 (struct httpd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int const) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 

esp_err_t FUNC6(struct httpd_data *hd)
{
    httpd_uri_t            *uri = NULL;
    httpd_req_t            *req = &hd->hd_req;
    struct http_parser_url *res = &hd->hd_req_aux.url_parse_res;

    /* For conveying URI not found/method not allowed */
    httpd_err_code_t err = 0;

    FUNC0(TAG, FUNC2("request for %s with type %d"), req->uri, req->method);

    /* URL parser result contains offset and length of path string */
    if (res->field_set & (1 << UF_PATH)) {
        uri = FUNC3(hd, req->uri + res->field_data[UF_PATH].off,
                                     res->field_data[UF_PATH].len, req->method, &err);
    }

    /* If URI with method not found, respond with error code */
    if (uri == NULL) {
        switch (err) {
            case HTTPD_404_NOT_FOUND:
                FUNC1(TAG, FUNC2("URI '%s' not found"), req->uri);
                return FUNC4(req, HTTPD_404_NOT_FOUND);
            case HTTPD_405_METHOD_NOT_ALLOWED:
                FUNC1(TAG, FUNC2("Method '%d' not allowed for URI '%s'"),
                         req->method, req->uri);
                return FUNC4(req, HTTPD_405_METHOD_NOT_ALLOWED);
            default:
                return ESP_FAIL;
        }
    }

    /* Attach user context data (passed during URI registration) into request */
    req->user_ctx = uri->user_ctx;

    /* Invoke handler */
    if (uri->handler(req) != ESP_OK) {
        /* Handler returns error, this socket should be closed */
        FUNC1(TAG, FUNC2("uri handler execution failed"));
        return ESP_FAIL;
    }
    return ESP_OK;
}
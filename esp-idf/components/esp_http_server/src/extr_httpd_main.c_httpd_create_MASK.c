#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock_db {int dummy; } ;
struct resp_hdr {int dummy; } ;
struct httpd_req_aux {struct httpd_data* resp_hdrs; } ;
struct TYPE_3__ {int max_uri_handlers; int max_open_sockets; int max_resp_headers; } ;
struct httpd_data {TYPE_1__ config; struct httpd_data* hd_calls; struct httpd_data* hd_sd; void* err_handler_fns; struct httpd_req_aux hd_req_aux; } ;
typedef  int /*<<< orphan*/  httpd_uri_t ;
typedef  int /*<<< orphan*/  httpd_err_handler_func_t ;
typedef  TYPE_1__ httpd_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HTTPD_ERR_CODE_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct httpd_data*) ; 

__attribute__((used)) static struct httpd_data *FUNC4(const httpd_config_t *config)
{
    /* Allocate memory for httpd instance data */
    struct httpd_data *hd = FUNC2(1, sizeof(struct httpd_data));
    if (!hd) {
        FUNC0(TAG, FUNC1("Failed to allocate memory for HTTP server instance"));
        return NULL;
    }
    hd->hd_calls = FUNC2(config->max_uri_handlers, sizeof(httpd_uri_t *));
    if (!hd->hd_calls) {
        FUNC0(TAG, FUNC1("Failed to allocate memory for HTTP URI handlers"));
        FUNC3(hd);
        return NULL;
    }
    hd->hd_sd = FUNC2(config->max_open_sockets, sizeof(struct sock_db));
    if (!hd->hd_sd) {
        FUNC0(TAG, FUNC1("Failed to allocate memory for HTTP session data"));
        FUNC3(hd->hd_calls);
        FUNC3(hd);
        return NULL;
    }
    struct httpd_req_aux *ra = &hd->hd_req_aux;
    ra->resp_hdrs = FUNC2(config->max_resp_headers, sizeof(struct resp_hdr));
    if (!ra->resp_hdrs) {
        FUNC0(TAG, FUNC1("Failed to allocate memory for HTTP response headers"));
        FUNC3(hd->hd_sd);
        FUNC3(hd->hd_calls);
        FUNC3(hd);
        return NULL;
    }
    hd->err_handler_fns = FUNC2(HTTPD_ERR_CODE_MAX, sizeof(httpd_err_handler_func_t));
    if (!hd->err_handler_fns) {
        FUNC0(TAG, FUNC1("Failed to allocate memory for HTTP error handlers"));
        FUNC3(ra->resp_hdrs);
        FUNC3(hd->hd_sd);
        FUNC3(hd->hd_calls);
        FUNC3(hd);
        return NULL;
    }
    /* Save the configuration for this instance */
    hd->config = *config;
    return hd;
}
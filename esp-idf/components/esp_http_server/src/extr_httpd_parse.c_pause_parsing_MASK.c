#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct httpd_req_aux {char const* scratch; } ;
struct httpd_req {struct httpd_req_aux* aux; } ;
typedef  int ssize_t ;
struct TYPE_5__ {int raw_datalen; int pre_parsed; int paused; struct httpd_req* req; } ;
typedef  TYPE_1__ parser_data_t ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef  TYPE_2__ http_parser ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (struct httpd_req*,char const*,int) ; 

__attribute__((used)) static esp_err_t FUNC5(http_parser *parser, const char* at)
{
    parser_data_t *parser_data = (parser_data_t *) parser->data;
    struct httpd_req *r        = parser_data->req;
    struct httpd_req_aux *ra   = r->aux;

    /* The length of data that was not parsed due to interruption
     * and hence needs to be read again later for parsing */
    ssize_t unparsed = parser_data->raw_datalen - (at - ra->scratch);
    if (unparsed < 0) {
        FUNC1(TAG, FUNC2("parsing beyond valid data = %d"), -unparsed);
        return ESP_ERR_INVALID_STATE;
    }

    /* Push back the un-parsed data into pending buffer for
     * receiving again with httpd_recv_with_opt() later when
     * read_block() executes */
    if (unparsed && (unparsed != FUNC4(r, at, unparsed))) {
        FUNC1(TAG, FUNC2("data too large for un-recv = %d"), unparsed);
        return ESP_FAIL;
    }

    /* Signal http_parser to pause execution and save the maximum
     * possible length, of the yet un-parsed data, that may get
     * parsed before http_parser_execute() returns. This pre_parsed
     * length will be updated then to reflect the actual length
     * that got parsed, and must be skipped when parsing resumes */
    parser_data->pre_parsed = unparsed;
    FUNC3(parser, 1);
    parser_data->paused = true;
    FUNC0(TAG, FUNC2("paused"));
    return ESP_OK;
}
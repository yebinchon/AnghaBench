#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  outbuf ;
struct TYPE_4__ {scalar_t__ sess_ctx; int /*<<< orphan*/  free_ctx; scalar_t__ user_ctx; } ;
typedef  TYPE_1__ httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  adder_free_func ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static esp_err_t FUNC5(httpd_req_t *req)
{
    /* Log total visitors */
    unsigned *visitors = (unsigned *)req->user_ctx;
    FUNC0(TAG, "/adder visitor count = %d", ++(*visitors));

    char outbuf[50];

    /* Create session's context if not already available */
    if (! req->sess_ctx) {
        FUNC0(TAG, "/adder GET allocating new session");
        req->sess_ctx = FUNC2(sizeof(int));
        req->free_ctx = adder_free_func;
        *(int *)req->sess_ctx = 0;
    }
    FUNC0(TAG, "/adder GET handler send %d", *(int *)req->sess_ctx);

    /* Respond with the accumulated value */
    FUNC3(outbuf, sizeof(outbuf),"%d", *((int *)req->sess_ctx));
    FUNC1(req, outbuf, FUNC4(outbuf));
    return ESP_OK;
}
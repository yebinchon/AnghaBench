#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct httpd_req_aux {TYPE_1__* sd; } ;
struct TYPE_5__ {struct httpd_req_aux* aux; } ;
typedef  TYPE_2__ httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int (* send_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  fd; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC3(httpd_req_t *r, const char *buf, size_t buf_len)
{
    struct httpd_req_aux *ra = r->aux;
    int ret;

    while (buf_len > 0) {
        ret = ra->sd->send_fn(ra->sd->handle, ra->sd->fd, buf, buf_len, 0);
        if (ret < 0) {
            FUNC0(TAG, FUNC1("error in send_fn"));
            return ESP_FAIL;
        }
        FUNC0(TAG, FUNC1("sent = %d"), ret);
        buf     += ret;
        buf_len -= ret;
    }
    return ESP_OK;
}
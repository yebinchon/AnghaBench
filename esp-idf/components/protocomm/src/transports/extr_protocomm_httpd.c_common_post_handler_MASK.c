#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_10__ {scalar_t__ content_len; char* uri; } ;
typedef  TYPE_2__ httpd_req_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_11__ {int /*<<< orphan*/  sec_inst; TYPE_1__* sec; } ;
struct TYPE_9__ {scalar_t__ (* close_transport_session ) (int /*<<< orphan*/ ,int) ;scalar_t__ (* new_transport_session ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ MAX_REQ_BODY_LEN ; 
 int PROTOCOMM_NO_SESSION_ID ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*,size_t) ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 TYPE_3__* pc_httpd ; 
 scalar_t__ FUNC8 (TYPE_3__*,char const*,int,char*,size_t,char**,int /*<<< orphan*/ *) ; 
 int session_id ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static esp_err_t FUNC11(httpd_req_t *req)
{
    esp_err_t ret;
    uint8_t *outbuf = NULL;
    char *req_body = NULL;
    const char *ep_name = NULL;
    ssize_t outlen;

    int cur_session_id = FUNC5(req);

    if (cur_session_id != session_id) {
        /* Initialize new security session */
        if (session_id != PROTOCOMM_NO_SESSION_ID) {
            FUNC0(TAG, "Closing session with ID: %d", session_id);
            /* Presently HTTP server doesn't support callback on socket closure so
             * previous session can only be closed when new session is requested */
            if (pc_httpd->sec && pc_httpd->sec->close_transport_session) {
                ret = pc_httpd->sec->close_transport_session(pc_httpd->sec_inst, session_id);
                if (ret != ESP_OK) {
                    FUNC2(TAG, "Error closing session with ID: %d", session_id);
                }
            }
            session_id = PROTOCOMM_NO_SESSION_ID;
        }
        if (pc_httpd->sec && pc_httpd->sec->new_transport_session) {
            ret = pc_httpd->sec->new_transport_session(pc_httpd->sec_inst, cur_session_id);
            if (ret != ESP_OK) {
                FUNC1(TAG, "Failed to launch new session with ID: %d", cur_session_id);
                ret = ESP_FAIL;
                goto out;
            }
        }
        session_id = cur_session_id;
        FUNC0(TAG, "New session with ID: %d", cur_session_id);
    }

    if (req->content_len <= 0) {
        FUNC1(TAG, "Content length not found");
        ret = ESP_FAIL;
        goto out;
    } else if (req->content_len > MAX_REQ_BODY_LEN) {
        FUNC1(TAG, "Request content length should be less than 4kb");
        ret = ESP_FAIL;
        goto out;
    }

    req_body = (char *) FUNC7(req->content_len);
    if (!req_body) {
        FUNC1(TAG, "Unable to allocate for request length %d", req->content_len);
        ret = ESP_ERR_NO_MEM;
        goto out;
    }

    size_t recv_size = 0;
    while (recv_size < req->content_len) {
        ret = FUNC4(req, req_body + recv_size, req->content_len - recv_size);
        if (ret < 0) {
            ret = ESP_FAIL;
            goto out;
        }
        recv_size += ret;
    }

    /* Extract the endpoint name from URI string of type "/ep_name" */
    ep_name = req->uri + 1;

    ret = FUNC8(pc_httpd, ep_name, session_id,
                               (uint8_t *)req_body, recv_size, &outbuf, &outlen);

    if (ret != ESP_OK) {
        FUNC1(TAG, "Data handler failed");
        ret = ESP_FAIL;
        goto out;
    }

    ret = FUNC6(req, (char *)outbuf, outlen);
    if (ret != ESP_OK) {
        FUNC1(TAG, "HTTP send failed");
        ret = ESP_FAIL;
        goto out;
    }
    ret = ESP_OK;
out:
    if (req_body) {
        FUNC3(req_body);
    }
    if (outbuf) {
        FUNC3(outbuf);
    }
    return ret;
}
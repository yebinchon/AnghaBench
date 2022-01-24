#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  protocomm_security_pop_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_10__ {struct TYPE_10__* sr; int /*<<< orphan*/  payload_case; int /*<<< orphan*/  msg; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {TYPE_2__* sec0; int /*<<< orphan*/  proto_case; } ;
typedef  TYPE_1__ SessionData ;
typedef  TYPE_2__ Sec0Payload ;
typedef  TYPE_2__ S0SessionResp ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  SEC0_MSG_TYPE__S0_Session_Response ; 
 int /*<<< orphan*/  SEC0_PAYLOAD__PAYLOAD_SR ; 
 int /*<<< orphan*/  SESSION_DATA__PROTO_SEC0 ; 
 int /*<<< orphan*/  STATUS__Success ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static esp_err_t FUNC5(uint32_t session_id,
                                    SessionData *req, SessionData *resp,
                                    const protocomm_security_pop_t *pop)
{
    Sec0Payload *out = (Sec0Payload *) FUNC2(sizeof(Sec0Payload));
    S0SessionResp *s0resp = (S0SessionResp *) FUNC2(sizeof(S0SessionResp));
    if (!out || !s0resp) {
        FUNC0(TAG, "Error allocating response");
        FUNC1(out);
        FUNC1(s0resp);
        return ESP_ERR_NO_MEM;
    }
    FUNC4(out);
    FUNC3(s0resp);
    s0resp->status = STATUS__Success;

    out->msg = SEC0_MSG_TYPE__S0_Session_Response;
    out->payload_case = SEC0_PAYLOAD__PAYLOAD_SR;
    out->sr = s0resp;

    resp->proto_case = SESSION_DATA__PROTO_SEC0;
    resp->sec0 = out;

    return ESP_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_8__ {size_t count; int /*<<< orphan*/  status; } ;
struct TYPE_7__ {TYPE_2__* resp_get_prop_count; int /*<<< orphan*/  payload_case; } ;
typedef  TYPE_1__ LocalCtrlMessage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_GET_PROP_COUNT ; 
 int /*<<< orphan*/  RespGetPropertyCount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* resp_payload ; 

__attribute__((used)) static esp_err_t FUNC5(LocalCtrlMessage *req,
                                            LocalCtrlMessage *resp, void **ctx)
{
    FUNC1(RespGetPropertyCount, resp_payload);
    FUNC4(resp_payload);

    size_t prop_count = 0;
    resp_payload->status = FUNC2(FUNC3(&prop_count));
    resp_payload->count = prop_count;
    resp->payload_case = LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_GET_PROP_COUNT;
    resp->resp_get_prop_count = resp_payload;
    FUNC0(TAG, "Got properties count %d", prop_count);
    return ESP_OK;
}
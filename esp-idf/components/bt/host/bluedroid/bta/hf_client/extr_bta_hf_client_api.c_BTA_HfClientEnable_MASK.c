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
typedef  int /*<<< orphan*/  tBTA_STATUS ;
typedef  int /*<<< orphan*/  tBTA_HF_CLIENT_CBACK ;
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
struct TYPE_5__ {int /*<<< orphan*/ * p_cback; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_HF_CLIENT_API_ENABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_FAILURE ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_API_ENABLE_EVT ; 
 int /*<<< orphan*/  BTA_ID_HS ; 
 int /*<<< orphan*/  BTA_SUCCESS ; 
 int /*<<< orphan*/  bta_hf_client_reg ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int) ; 

tBTA_STATUS FUNC5(tBTA_HF_CLIENT_CBACK *p_cback)
{
    tBTA_HF_CLIENT_API_ENABLE  *p_buf;

    if (FUNC1 (BTA_ID_HS)) {
        FUNC0("BTA HF Client is already enabled, ignoring ...");
        return BTA_FAILURE;
    }

    /* register with BTA system manager */
    FUNC2(BTA_ID_HS, &bta_hf_client_reg);

    if ((p_buf = (tBTA_HF_CLIENT_API_ENABLE *) FUNC4(sizeof(tBTA_HF_CLIENT_API_ENABLE))) != NULL) {
        p_buf->hdr.event = BTA_HF_CLIENT_API_ENABLE_EVT;
        p_buf->p_cback = p_cback;
        FUNC3(p_buf);
    }

    return BTA_SUCCESS;
}
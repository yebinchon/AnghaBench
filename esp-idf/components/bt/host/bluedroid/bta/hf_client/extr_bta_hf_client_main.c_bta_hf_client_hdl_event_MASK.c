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
typedef  int /*<<< orphan*/  tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {int event; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
#define  BTA_HF_CLIENT_API_DISABLE_EVT 129 
#define  BTA_HF_CLIENT_API_ENABLE_EVT 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

BOOLEAN FUNC5(BT_HDR *p_msg)
{
#if BTA_HF_CLIENT_DEBUG == TRUE
    FUNC0("bta_hf_client_hdl_event %s (0x%x)", FUNC3(p_msg->event), p_msg->event);
#endif

    switch (p_msg->event) {
    /* handle enable event */
    case BTA_HF_CLIENT_API_ENABLE_EVT:
        FUNC2((tBTA_HF_CLIENT_DATA *) p_msg);
        break;

    /* handle disable event */
    case BTA_HF_CLIENT_API_DISABLE_EVT:
        FUNC1((tBTA_HF_CLIENT_DATA *) p_msg);
        break;

    default:
        FUNC4(p_msg->event, (tBTA_HF_CLIENT_DATA *) p_msg);
        break;
    }
    return TRUE;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_HF_CLIENT_DATA ;
struct TYPE_2__ {scalar_t__ sdp_handle; int /*<<< orphan*/  scn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTM_SEC_SERVICE_HF_HANDSFREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UUID_SERVCLASS_HF_HANDSFREE ; 
 TYPE_1__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(tBTA_HF_CLIENT_DATA *p_data)
{
    FUNC4(p_data);

    FUNC0("bta_hf_client_del_record");

    if (bta_hf_client_cb.sdp_handle != 0) {
        FUNC3(bta_hf_client_cb.sdp_handle);
        bta_hf_client_cb.sdp_handle = 0;
        FUNC1(bta_hf_client_cb.scn);
        FUNC2(BTM_SEC_SERVICE_HF_HANDSFREE);
        FUNC5(UUID_SERVCLASS_HF_HANDSFREE);
    }
}
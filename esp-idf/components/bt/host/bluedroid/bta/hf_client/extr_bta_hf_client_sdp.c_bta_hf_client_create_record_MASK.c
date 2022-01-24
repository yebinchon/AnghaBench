#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  features; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ api_register; } ;
typedef  TYPE_2__ tBTA_HF_CLIENT_DATA ;
struct TYPE_7__ {scalar_t__ sdp_handle; int /*<<< orphan*/  scn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  UUID_SERVCLASS_HF_HANDSFREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(tBTA_HF_CLIENT_DATA *p_data)
{
    /* add sdp record if not already registered */
    if (bta_hf_client_cb.sdp_handle == 0) {
        bta_hf_client_cb.sdp_handle = FUNC1();
        bta_hf_client_cb.scn = FUNC0();
        FUNC2(p_data->api_register.name,
                                 bta_hf_client_cb.scn,
                                 p_data->api_register.features,
                                 bta_hf_client_cb.sdp_handle);

        FUNC3(UUID_SERVCLASS_HF_HANDSFREE);
    }

}
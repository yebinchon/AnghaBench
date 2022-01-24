#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* indicator_lookup; int /*<<< orphan*/  current_cmd; } ;
struct TYPE_5__ {TYPE_1__ at_cb; } ;
struct TYPE_6__ {TYPE_2__ scb; } ;

/* Variables and functions */
 int BTA_HF_CLIENT_AT_INDICATOR_COUNT ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_AT_NONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
    int i;

    FUNC3();
    FUNC2();

    FUNC1();

    FUNC0();

    for (i = 0; i < BTA_HF_CLIENT_AT_INDICATOR_COUNT; i++) {
        bta_hf_client_cb.scb.at_cb.indicator_lookup[i] = -1;
    }

    bta_hf_client_cb.scb.at_cb.current_cmd = BTA_HF_CLIENT_AT_NONE;
}
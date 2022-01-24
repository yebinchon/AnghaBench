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
struct TYPE_4__ {int /*<<< orphan*/  resp_timer_on; } ;
struct TYPE_5__ {TYPE_1__ at_cb; } ;
struct TYPE_6__ {TYPE_2__ scb; } ;
typedef  int /*<<< orphan*/  TIMER_LIST_ENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_API_CLOSE_EVT ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (TIMER_LIST_ENT *p_tle)
{
    if (p_tle) {
        bta_hf_client_cb.scb.at_cb.resp_timer_on = FALSE;

        FUNC0("HFPClient: AT response timeout, disconnecting");

        FUNC1(BTA_HF_CLIENT_API_CLOSE_EVT, NULL);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sec_mask; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_8__ {TYPE_1__ api_open; } ;
typedef  TYPE_3__ tBTA_HF_CLIENT_DATA ;
struct TYPE_7__ {int /*<<< orphan*/  role; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  cli_sec_mask; } ;
struct TYPE_9__ {TYPE_2__ scb; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_HF_CLIENT_INT ; 
 int /*<<< orphan*/  BTA_ID_HS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(tBTA_HF_CLIENT_DATA *p_data)
{
    BD_ADDR pending_bd_addr;

    /* store parameters */
    if (p_data) {
        FUNC1(bta_hf_client_cb.scb.peer_addr, p_data->api_open.bd_addr);
        bta_hf_client_cb.scb.cli_sec_mask = p_data->api_open.sec_mask;
    }

    /* Check if RFCOMM has any incoming connection to avoid collision. */
    if (FUNC0 (pending_bd_addr)) {
        /* Let the incoming connection goes through.                        */
        /* Issue collision for now.                                         */
        /* We will decide what to do when we find incoming connection later.*/
        FUNC3 (0, BTA_ID_HS, 0, bta_hf_client_cb.scb.peer_addr);
        return;
    }

    /* close server */
    FUNC2();

    /* set role */
    bta_hf_client_cb.scb.role = BTA_HF_CLIENT_INT;

    /* do service search */
    FUNC4();
}
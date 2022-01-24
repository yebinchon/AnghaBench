#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  open_services; int /*<<< orphan*/  role; int /*<<< orphan*/  reg_services; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  cli_sec_mask; } ;
typedef  TYPE_2__ tBTA_AG_SCB ;
struct TYPE_8__ {int /*<<< orphan*/  sec_mask; int /*<<< orphan*/  services; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_10__ {TYPE_1__ api_open; } ;
typedef  TYPE_3__ tBTA_AG_DATA ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_INT ; 
 int /*<<< orphan*/  BTA_ID_AG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    BD_ADDR pending_bd_addr;
    /* store parameters */
    if (p_data) {
        FUNC1(p_scb->peer_addr, p_data->api_open.bd_addr);
        p_scb->open_services = p_data->api_open.services;
        p_scb->cli_sec_mask = p_data->api_open.sec_mask;
    }
    /* Check if RFCOMM has any incoming connection to avoid collision. */
    if (FUNC0 (pending_bd_addr)) {
        /* Let the incoming connection goes through.                        */
        /* Issue collision for this scb for now.                            */
        /* We will decide what to do when we find incoming connetion later. */
        FUNC3 (0, BTA_ID_AG, 0, p_scb->peer_addr);
        return;
    }
    /* close servers */
    FUNC2(p_scb, p_scb->reg_services);
    /* set role */
    p_scb->role = BTA_AG_INT;
    /* do service search */
    FUNC4(p_scb, p_scb->open_services);
}
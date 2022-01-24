#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT8 ;
struct TYPE_8__ {TYPE_1__** reg; } ;
struct TYPE_7__ {int event; } ;
struct TYPE_6__ {scalar_t__ (* evt_hdlr ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ BT_HDR ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 size_t BTA_ID_MAX ; 
 scalar_t__ TRUE ; 
 TYPE_5__ bta_sys_cb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

void FUNC4(void * param)
{
    BT_HDR *p_msg = (BT_HDR *)param;

    UINT8       id;
    BOOLEAN     freebuf = TRUE;

    FUNC0("BTA got event 0x%x\n", p_msg->event);

    /* get subsystem id from event */
    id = (UINT8) (p_msg->event >> 8);

    /* verify id and call subsystem event handler */
    if ((id < BTA_ID_MAX) && (bta_sys_cb.reg[id] != NULL)) {
        freebuf = (*bta_sys_cb.reg[id]->evt_hdlr)(p_msg);
    } else {
        FUNC1("BTA got unregistered event id %d\n", id);
    }

    if (freebuf) {
        FUNC2(p_msg);
    }

}
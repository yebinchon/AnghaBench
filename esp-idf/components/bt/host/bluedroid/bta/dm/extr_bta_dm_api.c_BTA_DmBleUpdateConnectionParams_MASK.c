#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {void* timeout; void* latency; void* max_int; void* min_int; int /*<<< orphan*/  bd_addr; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_UPDATE_CONN_PARAM ;
typedef  void* UINT16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_UPDATE_CONN_PARAM_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(BD_ADDR bd_addr, UINT16 min_int, UINT16 max_int,
                                     UINT16 latency, UINT16 timeout)
{
    tBTA_DM_API_UPDATE_CONN_PARAM *p_msg;

    if ((p_msg = (tBTA_DM_API_UPDATE_CONN_PARAM *) FUNC3(sizeof(tBTA_DM_API_UPDATE_CONN_PARAM))) != NULL) {
        FUNC2 (p_msg, 0, sizeof(tBTA_DM_API_UPDATE_CONN_PARAM));

        p_msg->hdr.event = BTA_DM_API_UPDATE_CONN_PARAM_EVT;
        FUNC0(p_msg->bd_addr, bd_addr);
        p_msg->min_int   = min_int;
        p_msg->max_int   = max_int;
        p_msg->latency   = latency;
        p_msg->timeout   = timeout;
        FUNC1(p_msg);
    }
}
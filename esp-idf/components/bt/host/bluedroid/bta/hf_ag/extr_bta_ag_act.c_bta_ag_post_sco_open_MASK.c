#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int post_sco; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_IN_CALL_CONN_RES ; 
#define  BTA_AG_POST_SCO_CALL_CONN 129 
 void* BTA_AG_POST_SCO_NONE ; 
#define  BTA_AG_POST_SCO_RING 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC2(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    switch (p_scb->post_sco) {
        case BTA_AG_POST_SCO_RING:
            FUNC1(p_scb, p_data);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case BTA_AG_POST_SCO_CALL_CONN:
            FUNC0(p_scb, BTA_AG_IN_CALL_CONN_RES);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        default:
            break;
    }
}
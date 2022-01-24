#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int post_sco; int features; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_END_CALL_RES ; 
 int BTA_AG_FEAT_NOSCO ; 
 int /*<<< orphan*/  BTA_AG_IN_CALL_CONN_RES ; 
 int /*<<< orphan*/  BTA_AG_IN_CALL_RES ; 
 int /*<<< orphan*/  BTA_AG_OUT_CALL_ORIG_RES ; 
#define  BTA_AG_POST_SCO_CALL_CONN 132 
#define  BTA_AG_POST_SCO_CALL_END 131 
#define  BTA_AG_POST_SCO_CALL_END_INCALL 130 
#define  BTA_AG_POST_SCO_CALL_ORIG 129 
#define  BTA_AG_POST_SCO_CLOSE_RFC 128 
 void* BTA_AG_POST_SCO_NONE ; 
 int BTA_AG_POST_SCO_RING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC5(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    switch (p_scb->post_sco) {
        case BTA_AG_POST_SCO_CLOSE_RFC:
            FUNC1(p_scb, p_data);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case BTA_AG_POST_SCO_CALL_CONN:
            FUNC3(p_scb, BTA_AG_IN_CALL_CONN_RES);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case BTA_AG_POST_SCO_CALL_ORIG:
            FUNC3(p_scb, BTA_AG_OUT_CALL_ORIG_RES);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case BTA_AG_POST_SCO_CALL_END:
            FUNC3(p_scb, BTA_AG_END_CALL_RES);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case BTA_AG_POST_SCO_CALL_END_INCALL:
        {
            FUNC3(p_scb, BTA_AG_END_CALL_RES);
            /* Sending callsetup IND and Ring were defered to after SCO close. */
            FUNC3(p_scb, BTA_AG_IN_CALL_RES);

            if (FUNC0(p_scb) && !(p_scb->features & BTA_AG_FEAT_NOSCO)) {
                p_scb->post_sco = BTA_AG_POST_SCO_RING;
                FUNC2(p_scb, p_data);
            } else {
                p_scb->post_sco = BTA_AG_POST_SCO_NONE;
                FUNC4(p_scb, p_data);
            }
            break;
        }

        default:
            break;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int chnl_state; } ;
typedef  TYPE_1__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
#define  CST_CLOSED 136 
#define  CST_CONFIG 135 
#define  CST_OPEN 134 
#define  CST_ORIG_W4_SEC_COMP 133 
#define  CST_TERM_W4_SEC_COMP 132 
#define  CST_W4_L2CAP_CONNECT_RSP 131 
#define  CST_W4_L2CAP_DISCONNECT_RSP 130 
#define  CST_W4_L2CA_CONNECT_RSP 129 
#define  CST_W4_L2CA_DISCONNECT_RSP 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

void FUNC10 (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    switch (p_ccb->chnl_state) {
    case CST_CLOSED:
        FUNC1 (p_ccb, event, p_data);
        break;

    case CST_ORIG_W4_SEC_COMP:
        FUNC4 (p_ccb, event, p_data);
        break;

    case CST_TERM_W4_SEC_COMP:
        FUNC5 (p_ccb, event, p_data);
        break;

    case CST_W4_L2CAP_CONNECT_RSP:
        FUNC8 (p_ccb, event, p_data);
        break;

    case CST_W4_L2CA_CONNECT_RSP:
        FUNC6 (p_ccb, event, p_data);
        break;

    case CST_CONFIG:
        FUNC2 (p_ccb, event, p_data);
        break;

    case CST_OPEN:
        FUNC3 (p_ccb, event, p_data);
        break;

    case CST_W4_L2CAP_DISCONNECT_RSP:
        FUNC9 (p_ccb, event, p_data);
        break;

    case CST_W4_L2CA_DISCONNECT_RSP:
        FUNC7 (p_ccb, event, p_data);
        break;

    default:
        FUNC0("Unhandled event! event = %d", event);
        break;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_SCO_DATA_FLAG ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_7__ {int /*<<< orphan*/  (* p_data_cb ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {TYPE_1__ sco_cb; } ;
struct TYPE_8__ {int offset; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_MAX_SCO_LINKS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_6__ btm_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

void  FUNC9(BT_HDR *p_msg)
{
#if BTM_SCO_HCI_INCLUDED == TRUE
    UINT16      sco_inx, handle;
    UINT8       *p = (UINT8 *)(p_msg + 1) + p_msg->offset;
    UINT8       pkt_size = 0;
    UINT8       pkt_status = 0;

    /* Extract Packet_Status_Flag and handle */
    FUNC3 (handle, p);
    pkt_status = FUNC1(handle);
    handle   = FUNC2 (handle);

    FUNC4 (pkt_size, p);
    FUNC5(pkt_size);
    if ((sco_inx = FUNC6(handle)) != BTM_MAX_SCO_LINKS ) {
        /* send data callback */
        if (!btm_cb.sco_cb.p_data_cb )
            /* if no data callback registered,  just free the buffer  */
        {
            FUNC7 (p_msg);
        } else {
            (*btm_cb.sco_cb.p_data_cb)(sco_inx, p_msg, (tBTM_SCO_DATA_FLAG) pkt_status);
        }
    } else { /* no mapping handle SCO connection is active, free the buffer */
        FUNC7 (p_msg);
    }
    FUNC0 ("SCO: hdl %x, len %d, pkt_sz %d\n", handle, p_msg->len, pkt_size);
#else
    osi_free(p_msg);
#endif
}
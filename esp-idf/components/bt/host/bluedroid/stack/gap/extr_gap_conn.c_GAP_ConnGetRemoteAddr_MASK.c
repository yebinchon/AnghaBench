#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ con_state; int /*<<< orphan*/ * rem_dev_address; } ;
typedef  TYPE_1__ tGAP_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 scalar_t__ GAP_CCB_STATE_LISTENING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

UINT8 *FUNC2 (UINT16 gap_handle)
{
    tGAP_CCB    *p_ccb = FUNC1 (gap_handle);

    FUNC0 ("GAP_ConnGetRemoteAddr gap_handle = %d", gap_handle);

    if ((p_ccb) && (p_ccb->con_state > GAP_CCB_STATE_LISTENING)) {
        FUNC0("GAP_ConnGetRemoteAddr bda :0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n", \
                        p_ccb->rem_dev_address[0], p_ccb->rem_dev_address[1], p_ccb->rem_dev_address[2],
                        p_ccb->rem_dev_address[3], p_ccb->rem_dev_address[4], p_ccb->rem_dev_address[5]);
        return (p_ccb->rem_dev_address);
    } else {
        FUNC0 ("GAP_ConnGetRemoteAddr return Error ");
        return (NULL);
    }
}
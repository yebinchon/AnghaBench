#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCIC_PARAM_SIZE_SETUP_ESCO ; 
 scalar_t__ HCIC_PREAMBLE_SIZE ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HCI_SETUP_ESCO_CONNECTION ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOLEAN FUNC5 (UINT16 handle, UINT32 tx_bw,
                                    UINT32 rx_bw, UINT16 max_latency, UINT16 voice,
                                    UINT8 retrans_effort, UINT16 packet_types)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = FUNC0(HCIC_PARAM_SIZE_SETUP_ESCO)) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_SETUP_ESCO;
    p->offset = 0;

    FUNC1 (pp, HCI_SETUP_ESCO_CONNECTION);
    FUNC3  (pp, HCIC_PARAM_SIZE_SETUP_ESCO);

    FUNC1 (pp, handle);
    FUNC2 (pp, tx_bw);
    FUNC2 (pp, rx_bw);
    FUNC1 (pp, max_latency);
    FUNC1 (pp, voice);
    FUNC3  (pp, retrans_effort);
    FUNC1 (pp, packet_types);

    FUNC4 (LOCAL_BR_EDR_CONTROLLER_ID,  p);
    return (TRUE);
}
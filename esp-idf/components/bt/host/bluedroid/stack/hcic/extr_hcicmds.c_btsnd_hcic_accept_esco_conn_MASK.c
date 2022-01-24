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
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCIC_PARAM_SIZE_ACCEPT_ESCO ; 
 scalar_t__ HCIC_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  HCI_ACCEPT_ESCO_CONNECTION ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOLEAN FUNC6 (BD_ADDR bd_addr, UINT32 tx_bw,
                                     UINT32 rx_bw, UINT16 max_latency,
                                     UINT16 content_fmt, UINT8 retrans_effort,
                                     UINT16 packet_types)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = FUNC1(HCIC_PARAM_SIZE_ACCEPT_ESCO)) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_ACCEPT_ESCO;
    p->offset = 0;

    FUNC2 (pp, HCI_ACCEPT_ESCO_CONNECTION);
    FUNC4  (pp, HCIC_PARAM_SIZE_ACCEPT_ESCO);

    FUNC0 (pp, bd_addr);
    FUNC3 (pp, tx_bw);
    FUNC3 (pp, rx_bw);
    FUNC2 (pp, max_latency);
    FUNC2 (pp, content_fmt);
    FUNC4  (pp, retrans_effort);
    FUNC2 (pp, packet_types);

    FUNC5 (LOCAL_BR_EDR_CONTROLLER_ID,  p);
    return (TRUE);
}
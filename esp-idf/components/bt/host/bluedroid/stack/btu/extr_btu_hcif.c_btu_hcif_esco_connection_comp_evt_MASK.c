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
struct TYPE_3__ {int /*<<< orphan*/  bd_addr; int /*<<< orphan*/  air_mode; int /*<<< orphan*/  tx_pkt_len; int /*<<< orphan*/  rx_pkt_len; int /*<<< orphan*/  retrans_window; int /*<<< orphan*/  tx_interval; int /*<<< orphan*/  link_type; } ;
typedef  TYPE_1__ tBTM_ESCO_DATA ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (UINT8 *p)
{
#if BTM_SCO_INCLUDED == TRUE
    tBTM_ESCO_DATA  data;
    UINT16          handle;
    BD_ADDR         bda;
    UINT8           status;

    FUNC2 (status, p);
    FUNC1 (handle, p);
    FUNC0 (bda, p);

    FUNC2 (data.link_type, p);
    FUNC2 (data.tx_interval, p);
    FUNC2 (data.retrans_window, p);
    FUNC1 (data.rx_pkt_len, p);
    FUNC1 (data.tx_pkt_len, p);
    FUNC2 (data.air_mode, p);

    FUNC4 (data.bd_addr, bda, BD_ADDR_LEN);
    FUNC3 (status, bda, handle, &data);
#endif
}
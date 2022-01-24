#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (UINT8 *p)
{
#if BTM_SCO_INCLUDED == TRUE
    UINT16  handle;
    UINT16  tx_pkt_len;
    UINT16  rx_pkt_len;
    UINT8   status;
    UINT8   tx_interval;
    UINT8   retrans_window;

    FUNC1 (status, p);
    FUNC0 (handle, p);

    FUNC1 (tx_interval, p);
    FUNC1 (retrans_window, p);
    FUNC0 (rx_pkt_len, p);
    FUNC0 (tx_pkt_len, p);

    FUNC2 (status, handle, tx_interval, retrans_window,
                            rx_pkt_len, tx_pkt_len);
#endif
}
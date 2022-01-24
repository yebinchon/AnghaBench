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
typedef  int /*<<< orphan*/  tBTA_OOB_DATA ;
typedef  int /*<<< orphan*/  tBTA_IO_CAP ;
typedef  int /*<<< orphan*/  tBTA_AUTH_REQ ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(BD_ADDR bd_addr, tBTA_IO_CAP *p_io_cap, tBTA_OOB_DATA *p_oob_data,
                      tBTA_AUTH_REQ *p_auth_req, BOOLEAN is_orig)
{
    FUNC1(bd_addr);
#if (defined(BTIF_INCLUDED) && BTIF_INCLUDED == TRUE)
#if (BTM_OOB_INCLUDED == TRUE)
    btif_dm_set_oob_for_io_req(p_oob_data);
#endif
    btif_dm_proc_io_req(bd_addr, p_io_cap, p_oob_data, p_auth_req, is_orig);
#else
    FUNC0("bta_dm_co_io_req: func not ported\n");
#endif /* #if (defined(BTIF_INCLUDED) && BTIF_INCLUDED == TRUE) */
    FUNC0("bta_dm_co_io_req *p_oob_data = %d", *p_oob_data);
    FUNC0("bta_dm_co_io_req *p_io_cap = %d", *p_io_cap);
    FUNC0("bta_dm_co_io_req *p_auth_req = %d", *p_auth_req);
    FUNC0("bta_dm_co_io_req is_orig = %d", is_orig);
}
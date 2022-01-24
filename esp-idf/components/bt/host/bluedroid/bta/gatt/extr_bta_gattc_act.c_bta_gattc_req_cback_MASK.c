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
typedef  int /*<<< orphan*/ * tGATTS_REQ_TYPE ;
typedef  int /*<<< orphan*/  tGATTS_DATA ;
typedef  int /*<<< orphan*/ * UINT32 ;
typedef  int /*<<< orphan*/ * UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1 (UINT16 conn_id, UINT32 trans_id, tGATTS_REQ_TYPE type, tGATTS_DATA *p_data)
{
    /* GATTC doesn't need to process the GATT request commands.
     * Add this callback here to avoid the warning "Call back not found for application"
     * printed in the function gatt_sr_send_req_callback
     * */
    FUNC0 (conn_id);
    FUNC0 (trans_id) ;
    FUNC0 (type);
    FUNC0 (p_data);
}
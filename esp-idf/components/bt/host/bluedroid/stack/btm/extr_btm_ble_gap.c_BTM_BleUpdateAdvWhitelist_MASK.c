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
typedef  int /*<<< orphan*/  tBTM_ADD_WHITELIST_CBACK ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOLEAN FUNC1(BOOLEAN add_remove, BD_ADDR remote_bda, tBLE_ADDR_TYPE addr_type, tBTM_ADD_WHITELIST_CBACK *add_wl_cb)
{
    return FUNC0(add_remove, remote_bda, addr_type, add_wl_cb);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  keep_rfu_in_auth_req; } ;
struct TYPE_4__ {TYPE_1__ devcb; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ btm_cb ; 

void FUNC1(BOOLEAN keep_rfu)
{
    FUNC0 ("btm_ble_set_keep_rfu_in_auth_req keep_rfus=%d", keep_rfu);
    btm_cb.devcb.keep_rfu_in_auth_req = keep_rfu;
}
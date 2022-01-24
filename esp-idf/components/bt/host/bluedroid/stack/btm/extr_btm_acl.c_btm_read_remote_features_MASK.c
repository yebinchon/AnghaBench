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
struct TYPE_3__ {int /*<<< orphan*/  peer_lmp_features; scalar_t__ num_read_pages; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  size_t UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_4__ {TYPE_1__* acl_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 size_t MAX_L2CAP_LINKS ; 
 TYPE_2__ btm_cb ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5 (UINT16 handle)
{
    UINT8       acl_idx;
    tACL_CONN   *p_acl_cb;

    FUNC0("btm_read_remote_features() handle: %d\n", handle);

    if ((acl_idx = FUNC2(handle)) >= MAX_L2CAP_LINKS) {
        FUNC1("btm_read_remote_features handle=%d invalid\n", handle);
        return;
    }

    p_acl_cb = &btm_cb.acl_db[acl_idx];
    p_acl_cb->num_read_pages = 0;
    FUNC4 (p_acl_cb->peer_lmp_features, 0, sizeof(p_acl_cb->peer_lmp_features));

    /* first send read remote supported features HCI command */
    /* because we don't know whether the remote support extended feature command */
    FUNC3 (handle);
}
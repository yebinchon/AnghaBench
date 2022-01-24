#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tACL_CONN ;
typedef  size_t UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_2__ {int /*<<< orphan*/ * acl_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 size_t MAX_L2CAP_LINKS ; 
 TYPE_1__ btm_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5 (UINT8 status, UINT16 handle)
{
    tACL_CONN   *p_acl_cb;
    UINT8       acl_idx;

    FUNC1 ("btm_read_remote_ext_features_failed (status 0x%02x) for handle %d\n",
                       status, handle);

    if ((acl_idx = FUNC3(handle)) >= MAX_L2CAP_LINKS) {
        FUNC0("btm_read_remote_ext_features_failed handle=%d invalid\n", handle);
        return;
    }

    p_acl_cb = &btm_cb.acl_db[acl_idx];

    /* Process supported features only */
    FUNC4 (p_acl_cb, 1);

    /* Continue HCI connection establishment */
    FUNC2 (p_acl_cb);
}
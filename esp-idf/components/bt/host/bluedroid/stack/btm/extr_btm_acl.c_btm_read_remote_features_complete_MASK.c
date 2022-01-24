#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * peer_lmp_features; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_8__ {TYPE_1__* acl_db; } ;
struct TYPE_7__ {scalar_t__ (* supports_reading_remote_extended_features ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 size_t HCI_EXT_FEATURES_PAGE_0 ; 
 int /*<<< orphan*/  HCI_EXT_FEATURES_PAGE_1 ; 
 int /*<<< orphan*/  HCI_FEATURE_BYTES_PER_PAGE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ HCI_SUCCESS ; 
 scalar_t__ MAX_L2CAP_LINKS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__*) ; 
 TYPE_5__ btm_cb ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 () ; 
 scalar_t__ FUNC11 () ; 

void FUNC12 (UINT8 *p)
{
    tACL_CONN        *p_acl_cb;
    UINT8             status;
    UINT16            handle;
    UINT8            acl_idx;

    FUNC0 ("btm_read_remote_features_complete\n");
    FUNC5  (status, p);

    if (status != HCI_SUCCESS) {
        FUNC1 ("btm_read_remote_features_complete failed (status 0x%02x)\n", status);
        return;
    }

    FUNC4 (handle, p);

    if ((acl_idx = FUNC7(handle)) >= MAX_L2CAP_LINKS) {
        FUNC1("btm_read_remote_features_complete handle=%d invalid\n", handle);
        return;
    }

    p_acl_cb = &btm_cb.acl_db[acl_idx];

    /* Copy the received features page */
    FUNC3(p_acl_cb->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0], p,
                    HCI_FEATURE_BYTES_PER_PAGE);

    if ((FUNC2(p_acl_cb->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) &&
            (FUNC10()->supports_reading_remote_extended_features())) {
        /* if the remote controller has extended features and local controller supports
        ** HCI_Read_Remote_Extended_Features command then start reading these feature starting
        ** with extended features page 1 */
        FUNC0 ("Start reading remote extended features\n");
        FUNC9(handle, HCI_EXT_FEATURES_PAGE_1);
        return;
    }

    /* Remote controller has no extended features. Process remote controller supported features
       (features page HCI_EXT_FEATURES_PAGE_0). */
    FUNC8 (p_acl_cb, 1);

    /* Continue with HCI connection establishment */
    FUNC6 (p_acl_cb);
}
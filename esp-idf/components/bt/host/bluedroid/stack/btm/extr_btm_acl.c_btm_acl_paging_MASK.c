#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev_class; int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_5__ {int* connecting_bda; int* connecting_dc; void* paging; int /*<<< orphan*/  page_queue; scalar_t__ discing; } ;
typedef  int /*<<< orphan*/  BT_HDR ;
typedef  int* BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int /*<<< orphan*/  DEV_CLASS_LEN ; 
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 void* TRUE ; 
 TYPE_3__ btm_cb ; 
 TYPE_1__* FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void  FUNC7 (BT_HDR *p, BD_ADDR bda)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    FUNC1 ("btm_acl_paging discing:%d, paging:%d BDA: %06x%06x\n",
                     btm_cb.discing, btm_cb.paging,
                     (bda[0] << 16) + (bda[1] << 8) + bda[2], (bda[3] << 16) + (bda[4] << 8) + bda[5]);
    if (btm_cb.discing) {
        btm_cb.paging = TRUE;
        FUNC4(btm_cb.page_queue, p, FIXED_QUEUE_MAX_TIMEOUT);
    } else {
        if (!FUNC0 (bda)) {
            FUNC1 ("connecting_bda: %06x%06x\n",
                             (btm_cb.connecting_bda[0] << 16) + (btm_cb.connecting_bda[1] << 8) +
                             btm_cb.connecting_bda[2],
                             (btm_cb.connecting_bda[3] << 16) + (btm_cb.connecting_bda[4] << 8) +
                             btm_cb.connecting_bda[5]);
            if (btm_cb.paging &&
                    FUNC5 (bda, btm_cb.connecting_bda, BD_ADDR_LEN) != 0) {
                FUNC4(btm_cb.page_queue, p, FIXED_QUEUE_MAX_TIMEOUT);
            } else {
                p_dev_rec = FUNC2 (bda);
                FUNC6 (btm_cb.connecting_bda, p_dev_rec->bd_addr,   BD_ADDR_LEN);
                FUNC6 (btm_cb.connecting_dc,  p_dev_rec->dev_class, DEV_CLASS_LEN);

                FUNC3 (LOCAL_BR_EDR_CONTROLLER_ID, p);
            }

            btm_cb.paging = TRUE;
        } else { /* ACL is already up */
            FUNC3 (LOCAL_BR_EDR_CONTROLLER_ID, p);
        }
    }
}
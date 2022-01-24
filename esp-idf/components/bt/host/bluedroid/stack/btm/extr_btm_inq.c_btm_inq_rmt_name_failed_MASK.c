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
struct TYPE_3__ {int /*<<< orphan*/ * remname_bda; scalar_t__ remname_active; } ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  HCI_ERR_UNSPECIFIED ; 
 TYPE_2__ btm_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3 (void)
{
    FUNC0 ("btm_inq_rmt_name_failed()  remname_active=%d\n", btm_cb.btm_inq_vars.remname_active);

    if (btm_cb.btm_inq_vars.remname_active) {
        FUNC1 (btm_cb.btm_inq_vars.remname_bda, NULL, 0, HCI_ERR_UNSPECIFIED);
    } else {
        FUNC1 (NULL, NULL, 0, HCI_ERR_UNSPECIFIED);
    }
#if (SMP_INCLUDED == TRUE)
    FUNC2 (NULL, NULL, HCI_ERR_UNSPECIFIED);
#endif  ///SMP_INCLUDED == TRUE
}
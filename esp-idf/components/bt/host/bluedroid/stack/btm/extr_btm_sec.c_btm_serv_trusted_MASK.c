#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  service_id; } ;
typedef  TYPE_1__ tBTM_SEC_SERV_REC ;
struct TYPE_6__ {int /*<<< orphan*/  trusted_mask; } ;
typedef  TYPE_2__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN FUNC1(tBTM_SEC_DEV_REC *p_dev_rec, tBTM_SEC_SERV_REC *p_serv_rec)
{
    if (FUNC0(p_dev_rec->trusted_mask, p_serv_rec->service_id)) {
        return (TRUE);
    }
    return (FALSE);
}
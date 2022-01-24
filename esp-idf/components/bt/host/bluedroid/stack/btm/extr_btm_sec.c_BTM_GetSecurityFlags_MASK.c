#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sec_flags; } ;
typedef  TYPE_1__ tBTM_SEC_DEV_REC ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

BOOLEAN FUNC2 (BD_ADDR bd_addr, UINT8 *p_sec_flags)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    if ((p_dev_rec = FUNC1 (bd_addr)) != NULL) {
        *p_sec_flags = (UINT8) p_dev_rec->sec_flags;
        return (TRUE);
    }
    FUNC0 ("BTM_GetSecurityFlags false");
    return (FALSE);
}
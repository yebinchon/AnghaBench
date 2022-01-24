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
struct TYPE_3__ {scalar_t__ sec_bd_name; } ;
typedef  TYPE_1__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

char *FUNC1 (BD_ADDR bd_addr)
{
    char *p_name = NULL;
    tBTM_SEC_DEV_REC *p_srec;

    if ((p_srec = FUNC0(bd_addr)) != NULL) {
        p_name = (char *)p_srec->sec_bd_name;
    }

    return (p_name);
}
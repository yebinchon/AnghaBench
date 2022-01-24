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
typedef  int /*<<< orphan*/  tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

tBTM_SEC_DEV_REC *FUNC3 (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec;
    FUNC0 ("btm_find_or_alloc_dev\n");
    if ((p_dev_rec = FUNC1 (bd_addr)) == NULL) {

        /* Allocate a new device record or reuse the oldest one */
        p_dev_rec = FUNC2 (bd_addr);
    }
    return (p_dev_rec);
}
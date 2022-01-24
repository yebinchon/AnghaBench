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
struct dquot {int dq_lflags; } ;

/* Variables and functions */
 int DQ_LLOCK ; 
 int DQ_LWANT ; 
 int /*<<< orphan*/  PVFS ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  quota_list_mtx_lock ; 

void
FUNC1(struct dquot *dq)
{
        while (dq->dq_lflags & DQ_LLOCK) {
	        dq->dq_lflags |= DQ_LWANT;
	        FUNC0(&dq->dq_lflags, quota_list_mtx_lock, PVFS, "dq_lock_internal", NULL);
	}
	dq->dq_lflags |= DQ_LLOCK;
}
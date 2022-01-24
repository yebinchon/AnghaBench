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

/* Variables and functions */
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_GRP_ATTR_NULL ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* nfs_data_lck_grp ; 
 void* nfs_node_hash_lck_grp ; 
 int /*<<< orphan*/  nfs_node_hash_mutex ; 
 void* nfs_node_lck_grp ; 

void
FUNC2(void)
{
	nfs_node_hash_lck_grp = FUNC0("nfs_node_hash", LCK_GRP_ATTR_NULL);
	nfs_node_hash_mutex = FUNC1(nfs_node_hash_lck_grp, LCK_ATTR_NULL);
	nfs_node_lck_grp = FUNC0("nfs_node", LCK_GRP_ATTR_NULL);
	nfs_data_lck_grp = FUNC0("nfs_data", LCK_GRP_ATTR_NULL);
}
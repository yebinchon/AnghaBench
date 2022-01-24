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
 int /*<<< orphan*/  M_NFSNODE ; 
 int /*<<< orphan*/  desiredvnodes ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_node_hash_mutex ; 
 int /*<<< orphan*/  nfsnodehash ; 
 scalar_t__ nfsnodehashtbl ; 

void
FUNC3(void)
{
	FUNC1(nfs_node_hash_mutex);
	if (!nfsnodehashtbl)
		nfsnodehashtbl = FUNC0(desiredvnodes, M_NFSNODE, &nfsnodehash);
	FUNC2(nfs_node_hash_mutex);
}
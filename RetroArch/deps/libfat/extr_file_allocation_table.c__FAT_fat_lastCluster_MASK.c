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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  PARTITION ;

/* Variables and functions */
 scalar_t__ CLUSTER_EOF ; 
 scalar_t__ CLUSTER_FREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

uint32_t FUNC1 (PARTITION* partition, uint32_t cluster)
{
	while ((FUNC0(partition, cluster) != CLUSTER_FREE) && (FUNC0(partition, cluster) != CLUSTER_EOF))
		cluster = FUNC0(partition, cluster);
	return cluster;
}
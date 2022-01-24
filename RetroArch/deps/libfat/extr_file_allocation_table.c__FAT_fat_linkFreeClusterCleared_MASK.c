#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ sectorsPerCluster; int /*<<< orphan*/  cache; int /*<<< orphan*/  bytesPerSector; } ;
typedef  TYPE_1__ PARTITION ;

/* Variables and functions */
 scalar_t__ CLUSTER_ERROR ; 
 scalar_t__ CLUSTER_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t FUNC6 (PARTITION* partition, uint32_t cluster)
{
	uint32_t i;
	uint8_t *emptySector;

	/* Link the cluster */
	uint32_t newCluster = FUNC2(partition, cluster);

	if (newCluster == CLUSTER_FREE || newCluster == CLUSTER_ERROR)
		return CLUSTER_ERROR;

	emptySector = (uint8_t*) FUNC3(partition->bytesPerSector);

	/* Clear all the sectors within the cluster */
	FUNC5 (emptySector, 0, partition->bytesPerSector);
	for (i = 0; i < partition->sectorsPerCluster; i++)
   {
		FUNC0 (partition->cache,
			FUNC1 (partition, newCluster) + i,
			1, emptySector);
	}

	FUNC4(emptySector);

	return newCluster;
}
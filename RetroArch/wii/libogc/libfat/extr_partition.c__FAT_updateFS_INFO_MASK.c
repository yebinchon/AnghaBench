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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  numberLastAllocCluster; int /*<<< orphan*/  numberFreeCluster; } ;
struct TYPE_6__ {int /*<<< orphan*/  fsInfoSector; int /*<<< orphan*/  disc; TYPE_1__ fat; } ;
typedef  TYPE_2__ PARTITION ;

/* Variables and functions */
 int /*<<< orphan*/  FSIB_numberLastAllocCluster ; 
 int /*<<< orphan*/  FSIB_numberOfFreeCluster ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(PARTITION * partition, uint8_t *sectorBuffer) {
	partition->fat.numberFreeCluster = FUNC1(partition);
	FUNC2(sectorBuffer, FSIB_numberOfFreeCluster, partition->fat.numberFreeCluster);
	FUNC2(sectorBuffer, FSIB_numberLastAllocCluster, partition->fat.numberLastAllocCluster);
	FUNC0 (partition->disc, partition->fsInfoSector, 1, sectorBuffer);
}
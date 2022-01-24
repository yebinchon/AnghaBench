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
typedef  int uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  numberLastAllocCluster; int /*<<< orphan*/  numberFreeCluster; } ;
struct TYPE_6__ {scalar_t__ filesysType; int /*<<< orphan*/  fsInfoSector; int /*<<< orphan*/  disc; TYPE_1__ fat; int /*<<< orphan*/  bytesPerSector; scalar_t__ readOnly; } ;
typedef  TYPE_2__ PARTITION ;

/* Variables and functions */
 int FSIB_SIG1 ; 
 int FSIB_SIG2 ; 
 size_t FSIB_bootSig_55 ; 
 size_t FSIB_bootSig_AA ; 
 int /*<<< orphan*/  FSIB_numberLastAllocCluster ; 
 int /*<<< orphan*/  FSIB_numberOfFreeCluster ; 
 scalar_t__ FS_FAT32 ; 
 int* FS_INFO_SIG1 ; 
 int* FS_INFO_SIG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(PARTITION * partition)
{
	int i;
   uint8_t *sectorBuffer;

	if(partition->readOnly || partition->filesysType != FS_FAT32)
		return;

	sectorBuffer = (uint8_t*) FUNC2(partition->bytesPerSector);
	if (!sectorBuffer)
      return;
	FUNC4(sectorBuffer, 0, partition->bytesPerSector);

	for(i = 0; i < 4; ++i)
	{
		sectorBuffer[FSIB_SIG1+i] = FS_INFO_SIG1[i];
		sectorBuffer[FSIB_SIG2+i] = FS_INFO_SIG2[i];
	}

	partition->fat.numberFreeCluster = FUNC1(partition);
	FUNC5(sectorBuffer, FSIB_numberOfFreeCluster, partition->fat.numberFreeCluster);
	FUNC5(sectorBuffer, FSIB_numberLastAllocCluster, partition->fat.numberLastAllocCluster);

	sectorBuffer[FSIB_bootSig_55] = 0x55;
	sectorBuffer[FSIB_bootSig_AA] = 0xAA;

	FUNC0 (partition->disc, partition->fsInfoSector, 1, sectorBuffer);

	FUNC3(sectorBuffer);
}
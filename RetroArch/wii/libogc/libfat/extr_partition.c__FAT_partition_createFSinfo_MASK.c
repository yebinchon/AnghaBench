#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {scalar_t__ filesysType; int /*<<< orphan*/  bytesPerSector; scalar_t__ readOnly; } ;
typedef  TYPE_1__ PARTITION ;

/* Variables and functions */
 int FSIB_SIG1 ; 
 int FSIB_SIG2 ; 
 size_t FSIB_bootSig_55 ; 
 size_t FSIB_bootSig_AA ; 
 scalar_t__ FS_FAT32 ; 
 int* FS_INFO_SIG1 ; 
 int* FS_INFO_SIG2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(PARTITION * partition)
{
	if(partition->readOnly || partition->filesysType != FS_FAT32)
		return;

	uint8_t *sectorBuffer = (uint8_t*) FUNC0(partition->bytesPerSector);
	if (!sectorBuffer) return;
	FUNC3(sectorBuffer, 0, partition->bytesPerSector);

	int i;
	for(i = 0; i < 4; ++i)
	{
		sectorBuffer[FSIB_SIG1+i] = FS_INFO_SIG1[i];
		sectorBuffer[FSIB_SIG2+i] = FS_INFO_SIG2[i];
	}

	sectorBuffer[FSIB_bootSig_55] = 0x55;
	sectorBuffer[FSIB_bootSig_AA] = 0xAA;

	FUNC2(partition,sectorBuffer);

	FUNC1(sectorBuffer);
}
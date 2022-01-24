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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DRESULT ;
typedef  int BYTE ;

/* Variables and functions */
#define  DEV_MMC 130 
#define  DEV_RAM 129 
#define  DEV_USB 128 
 int FUNC0 (int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RES_PARERR ; 
 int FUNC2 (int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

DRESULT FUNC3 (
	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
	const BYTE *buff,	/* Data to be written */
	DWORD sector,		/* Start sector in LBA */
	UINT count			/* Number of sectors to write */
)
{
	DRESULT res;
	int result;

	switch (pdrv) {
	case DEV_RAM :
		// translate the arguments here

		result = FUNC1(buff, sector, count);

		// translate the reslut code here

		return res;

	case DEV_MMC :
		// translate the arguments here

		result = FUNC0(buff, sector, count);

		// translate the reslut code here

		return res;

	case DEV_USB :
		// translate the arguments here

		result = FUNC2(buff, sector, count);

		// translate the reslut code here

		return res;
	}

	return RES_PARERR;
}
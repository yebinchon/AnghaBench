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
typedef  int /*<<< orphan*/  DSTATUS ;
typedef  int BYTE ;

/* Variables and functions */
#define  DEV_MMC 130 
#define  DEV_RAM 129 
#define  DEV_USB 128 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  STA_NOINIT ; 
 int FUNC2 () ; 

DSTATUS FUNC3 (
	BYTE pdrv				/* Physical drive nmuber to identify the drive */
)
{
	DSTATUS stat;
	int result;

	switch (pdrv) {
	case DEV_RAM :
		result = FUNC1();

		// translate the reslut code here

		return stat;

	case DEV_MMC :
		result = FUNC0();

		// translate the reslut code here

		return stat;

	case DEV_USB :
		result = FUNC2();

		// translate the reslut code here

		return stat;
	}
	return STA_NOINIT;
}
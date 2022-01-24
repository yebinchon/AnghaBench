#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
typedef  int dev_t ;
struct TYPE_2__ {int mdFlags; unsigned int mdBase; int mdSize; int mdBDev; int mdCDev; int /*<<< orphan*/  mdSecsize; int /*<<< orphan*/ * mdcdevb; int /*<<< orphan*/ * mdbdevb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFS_BLOCK ; 
 int /*<<< orphan*/  DEVFS_CHAR ; 
 int /*<<< orphan*/  DEV_BSIZE ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int NB_MAX_MDEVICES ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 void* FUNC3 (scalar_t__,int) ; 
 int mdInited ; 
 int mdPhys ; 
 TYPE_1__* mdev ; 
 scalar_t__ mdevBMajor ; 
 scalar_t__ mdevCMajor ; 
 int /*<<< orphan*/  mdevbdevsw ; 
 int /*<<< orphan*/  mdevcdevsw ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

dev_t FUNC6(int devid, uint64_t base, unsigned int size, int phys) {
	
	int i;
	
	if(devid < 0) {

		devid = -1;
		for(i = 0; i < NB_MAX_MDEVICES; i++) {						/* Search all known memory devices */
			if(!(mdev[i].mdFlags & mdInited)) {			/* Is this a free one? */
				if(devid < 0)devid = i;					/* Remember first free one */
				continue;								/* Skip check */
			}
			if(!(((base + size -1 ) < mdev[i].mdBase) || ((mdev[i].mdBase + mdev[i].mdSize - 1) < base))) {	/* Is there any overlap? */
				FUNC4("mdevadd: attempt to add overlapping memory device at %016llX-%016llX\n", mdev[i].mdBase, mdev[i].mdBase + mdev[i].mdSize - 1);
			}
		}
		if(devid < 0) {									/* Do we have free slots? */
			FUNC4("mdevadd: attempt to add more than %d memory devices\n", NB_MAX_MDEVICES);
		}
	}
	else {
		if(devid >= NB_MAX_MDEVICES) {								/* Giving us something bogus? */
			FUNC4("mdevadd: attempt to explicitly add a bogus memory device: %08X\n", devid);
		}
		if(mdev[devid].mdFlags & mdInited) {			/* Already there? */
			FUNC4("mdevadd: attempt to explicitly add a previously defined memory device: %08X\n", devid);
		}
	}
	
	if(mdevBMajor < 0) {								/* Have we gotten a major number yet? */
		mdevBMajor = FUNC0(-1, &mdevbdevsw);		/* Add to the table and figure out a major number */
		if (mdevBMajor < 0) {
			FUNC5("mdevadd: error - bdevsw_add() returned %d\n", mdevBMajor);
			return -1;
		}
	}
	
	if(mdevCMajor < 0) {								/* Have we gotten a major number yet? */
		mdevCMajor = FUNC1(-1, &mdevcdevsw, mdevBMajor);		/* Add to the table and figure out a major number */
		if (mdevCMajor < 0) {
			FUNC5("ramdevice_init: error - cdevsw_add() returned %d\n", mdevCMajor);
			return -1;
		}
	}

	mdev[devid].mdBDev = FUNC3(mdevBMajor, devid);	/* Get the device number */
	mdev[devid].mdbdevb = FUNC2(mdev[devid].mdBDev, DEVFS_BLOCK,	/* Make the node */
						  UID_ROOT, GID_OPERATOR, 
						  0600, "md%d", devid);
	if (mdev[devid].mdbdevb == NULL) {					/* Did we make one? */
		FUNC5("mdevadd: devfs_make_node for block failed!\n");
		return -1;										/* Nope... */
	}

	mdev[devid].mdCDev = FUNC3(mdevCMajor, devid);	/* Get the device number */
	mdev[devid].mdcdevb = FUNC2(mdev[devid].mdCDev, DEVFS_CHAR,		/* Make the node */
						  UID_ROOT, GID_OPERATOR, 
						  0600, "rmd%d", devid);
	if (mdev[devid].mdcdevb == NULL) {					/* Did we make one? */
		FUNC5("mdevadd: devfs_make_node for character failed!\n");
		return -1;										/* Nope... */
	}
	
	mdev[devid].mdBase = base;							/* Set the base address of ram disk */
	mdev[devid].mdSize = size;							/* Set the length of the ram disk */
	mdev[devid].mdSecsize = DEV_BSIZE;					/* Set starting block size */
	if(phys) mdev[devid].mdFlags |= mdPhys;				/* Show that we are in physical memory */
	mdev[devid].mdFlags |= mdInited;					/* Show we are all set up */
	FUNC5("Added memory device md%x/rmd%x (%08X/%08X) at %016llX for %016llX\n", 
		   devid, devid, mdev[devid].mdBDev, mdev[devid].mdCDev, base << 12, (uint64_t)size << 12);
	return mdev[devid].mdBDev;
}
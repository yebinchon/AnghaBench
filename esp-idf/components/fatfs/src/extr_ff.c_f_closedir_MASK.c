#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ fs; scalar_t__ lockid; } ;
struct TYPE_4__ {TYPE_2__ obj; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FF_DIR ;
typedef  int /*<<< orphan*/  FATFS ;

/* Variables and functions */
 scalar_t__ FR_OK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ **) ; 

FRESULT FUNC3 (
	FF_DIR *dp		/* Pointer to the directory object to be closed */
)
{
	FRESULT res;
	FATFS *fs;


	res = FUNC2(&dp->obj, &fs);	/* Check validity of the file object */
	if (res == FR_OK) {
#if FF_FS_LOCK != 0
		if (dp->obj.lockid) res = dec_lock(dp->obj.lockid);	/* Decrement sub-directory open counter */
		if (res == FR_OK) dp->obj.fs = 0;	/* Invalidate directory object */
#else
		dp->obj.fs = 0;	/* Invalidate directory object */
#endif
#if FF_FS_REENTRANT
		unlock_fs(fs, FR_OK);		/* Unlock volume */
#endif
	}
	return res;
}
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
struct zipent {long offset_lcl_hdr_frm_frst_disk; } ;
struct TYPE_4__ {int /*<<< orphan*/  zip; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ ZIP ;
typedef  int UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_CORRUPT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int ZIPFNLN ; 
 int ZIPNAME ; 
 int ZIPXTRALN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(ZIP* zip, struct zipent* ent) {
	char buf[ZIPNAME];
	long offset;

	if (!zip->fp) {
		if (!FUNC4(zip))
			return -1;
	}

	if (FUNC2(zip->fp, ent->offset_lcl_hdr_frm_frst_disk, SEEK_SET)!=0) {
		FUNC0 ("Seeking to header", ERROR_CORRUPT, zip->zip);
		return -1;
	}

	if (FUNC1(buf, ZIPNAME, 1, zip->fp)!=1) {
		FUNC0 ("Reading header", ERROR_CORRUPT, zip->zip);
		return -1;
	}

	{
		UINT16 filename_length = FUNC3 (buf+ZIPFNLN);
		UINT16 extra_field_length = FUNC3 (buf+ZIPXTRALN);

		/* calculate offset to data and fseek() there */
		offset = ent->offset_lcl_hdr_frm_frst_disk + ZIPNAME + filename_length + extra_field_length;

		if (FUNC2(zip->fp, offset, SEEK_SET) != 0) {
			FUNC0 ("Seeking to compressed data", ERROR_CORRUPT, zip->zip);
			return -1;
		}

	}

	return 0;
}
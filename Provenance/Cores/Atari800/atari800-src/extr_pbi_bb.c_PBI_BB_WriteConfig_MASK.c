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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* bb_rom_filename ; 
 char* bb_scsi_disk_filename ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC2(FILE *fp)
{
	FUNC1(fp, "BLACK_BOX_ROM=%s\n", bb_rom_filename);
	if (!FUNC0(bb_scsi_disk_filename)) {
		FUNC1(fp, "BB_SCSI_DISK=%s\n", bb_scsi_disk_filename);
	}
}
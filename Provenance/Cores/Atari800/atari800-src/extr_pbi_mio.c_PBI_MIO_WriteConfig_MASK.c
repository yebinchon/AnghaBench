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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* mio_rom_filename ; 
 char* mio_scsi_disk_filename ; 

void FUNC2(FILE *fp)
{
	FUNC1(fp, "MIO_ROM=%s\n", mio_rom_filename);
	if (!FUNC0(mio_scsi_disk_filename)) {
		FUNC1(fp, "MIO_SCSI_DISK=%s\n", mio_scsi_disk_filename);
	}
}
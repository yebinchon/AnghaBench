#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zipent {int compression_method; scalar_t__ compressed_size; scalar_t__ uncompressed_size; int version_needed_to_extract; int os_needed_to_extract; scalar_t__ disk_number_start; } ;
struct TYPE_5__ {scalar_t__ number_of_this_disk; int /*<<< orphan*/  zip; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ ZIP ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_CORRUPT ; 
 int /*<<< orphan*/  ERROR_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned char*,scalar_t__) ; 
 int FUNC2 (TYPE_1__*,struct zipent*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct zipent*) ; 

int FUNC4(ZIP* zip, struct zipent* ent, char* data) {
	if (ent->compression_method == 0x0000) {
		/* file is not compressed, simply stored */

		/* check if size are equal */
		if (ent->compressed_size != ent->uncompressed_size) {
			FUNC0("Wrong uncompressed size in store compression", ERROR_CORRUPT,zip->zip);
			return -3;
		}

		return FUNC2(zip,ent,data);
	} else if (ent->compression_method == 0x0008) {
		/* file is compressed using "Deflate" method */
		if (ent->version_needed_to_extract > 0x14) {
			FUNC0("Version too new", ERROR_UNSUPPORTED,zip->zip);
			return -2;
		}

		if (ent->os_needed_to_extract != 0x00) {
			FUNC0("OS not supported", ERROR_UNSUPPORTED,zip->zip);
			return -2;
		}

		if (ent->disk_number_start != zip->number_of_this_disk) {
			FUNC0("Cannot span disks", ERROR_UNSUPPORTED,zip->zip);
			return -2;
		}

		/* read compressed data */
		if (FUNC3(zip,ent)!=0) {
			return -1;
		}

		/* configure inflate */
		if (FUNC1( zip->fp, ent->compressed_size, (unsigned char*)data, ent->uncompressed_size))
		{
			FUNC0("Inflating compressed data", ERROR_CORRUPT, zip->zip);
			return -3;
		}

		return 0;
	} else {
		FUNC0("Compression method unsupported", ERROR_UNSUPPORTED, zip->zip);
		return -2;
	}
}
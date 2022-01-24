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
struct TYPE_5__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Crc32; int /*<<< orphan*/  Size; int /*<<< orphan*/  DateTime; } ;
typedef  TYPE_1__ ZIP_FILE ;
struct TYPE_6__ {scalar_t__ ExtraLen; void* FileNameLen; void* Crc32; void* UncompSize; void* CompSize; void* Option; void* FileTime; void* FileDate; scalar_t__ CompType; void* NeedVer; void* Signature; } ;
typedef  TYPE_2__ ZIP_DATA_HEADER ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIP_SIGNATURE ; 
 int ZIP_VERSION ; 

void FUNC7(ZIP_FILE *f, ZIP_DATA_HEADER *h, bool write_sizes)
{
	// Validate arguments
	if (f == NULL || h ==NULL)
	{
		return;
	}

	h->Signature = FUNC1(FUNC4(ZIP_SIGNATURE));
	h->NeedVer = FUNC0(FUNC3(ZIP_VERSION));
	h->CompType = 0;
	h->FileDate = FUNC0(FUNC3(FUNC5(f->DateTime)));
	h->FileTime = FUNC0(FUNC3(FUNC6(f->DateTime)));
	h->Option = FUNC0(FUNC3(8)); // bit3: Set the file-size and the CRC in local header to 0

	if (write_sizes == false)
	{
		h->CompSize = h->UncompSize = 0;
		h->Crc32 = 0;
	}
	else
	{
		h->CompSize = h->UncompSize = FUNC1(FUNC4(f->Size));
		h->Crc32 = FUNC1(FUNC4(f->Crc32));
	}

	h->FileNameLen = FUNC0(FUNC3(FUNC2(f->Name)));
	h->ExtraLen = 0;
}
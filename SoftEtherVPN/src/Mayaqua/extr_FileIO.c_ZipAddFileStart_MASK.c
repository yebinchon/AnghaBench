#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  h ;
struct TYPE_8__ {TYPE_2__* CurrentFile; TYPE_6__* Fifo; int /*<<< orphan*/  FileList; } ;
typedef  TYPE_1__ ZIP_PACKER ;
struct TYPE_9__ {char* Name; int Crc32; void* HeaderPos; void* Attributes; scalar_t__ DateTime; void* Size; } ;
typedef  TYPE_2__ ZIP_FILE ;
typedef  char ZIP_DATA_HEADER ;
typedef  scalar_t__ UINT64 ;
typedef  void* UINT ;
struct TYPE_10__ {scalar_t__ total_write_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 TYPE_2__* FUNC9 (int) ; 

void FUNC10(ZIP_PACKER *p, char *name, UINT size, UINT64 dt, UINT attribute)
{
	char tmp[MAX_PATH];
	ZIP_FILE *f;
	ZIP_DATA_HEADER h;
	// Validate arguments
	if (p == NULL || FUNC1(name))
	{
		return;
	}
	if (dt == 0)
	{
		dt = FUNC2();
	}

	if (p->CurrentFile != NULL)
	{
		return;
	}

	FUNC4(tmp, sizeof(tmp), name);
	FUNC3(tmp, sizeof(tmp), tmp, "/", "\\", true);

	f = FUNC9(sizeof(ZIP_FILE));

	FUNC4(f->Name, sizeof(f->Name), tmp);
	f->Size = size;
	f->DateTime = dt;
	f->Attributes = attribute;

	FUNC0(p->FileList, f);

	FUNC8(&h, sizeof(h));
	f->HeaderPos = (UINT)p->Fifo->total_write_size;
	FUNC7(f, &h, false);
	FUNC6(p->Fifo, &h, sizeof(h));
	FUNC6(p->Fifo, f->Name, FUNC5(f->Name));
	f->Crc32 = 0xffffffff;

	p->CurrentFile = f;
}
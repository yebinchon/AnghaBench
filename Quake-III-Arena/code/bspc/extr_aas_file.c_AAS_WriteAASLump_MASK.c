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
struct TYPE_4__ {void* filelen; void* fileofs; } ;
typedef  TYPE_1__ aas_lump_t ;
struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef  TYPE_2__ aas_header_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC5(FILE *fp, aas_header_t *h, int lumpnum, void *data, int length)
{
	aas_lump_t *lump;

	lump = &h->lumps[lumpnum];
	
	lump->fileofs = FUNC0(FUNC3(fp));
	lump->filelen = FUNC0(length);

	if (length > 0)
	{
		if (FUNC4(data, length, 1, fp) < 1)
		{
			FUNC1("error writing lump %s\n", lumpnum);
			FUNC2(fp);
			return false;
		} //end if
	} //end if
	return true;
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AO_FAIL ; 
 int AO_SUCCESS ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(char *filename, u8 **buffer, u64 *length)
{
	u8 *filebuf;
	u32 size;
	FILE *auxfile;
   size_t fread_val = 0;

	auxfile = FUNC1(filename, "rb");
	if (!auxfile)
	{
		FUNC6("Unable to find auxiliary file %s\n", filename);
		return AO_FAIL;
	}

	FUNC3(auxfile, 0, SEEK_END);
	size = FUNC4(auxfile);
	FUNC3(auxfile, 0, SEEK_SET);

	filebuf = FUNC5(size);

	if (!filebuf)
	{
		FUNC0(auxfile);
		FUNC6("ERROR: could not allocate %d bytes of memory\n", size);
		return AO_FAIL;
	}

   fread_val = FUNC2(filebuf, size, 1, auxfile);
	FUNC0(auxfile);

	*buffer = filebuf;
	*length = (u64)size;

	return AO_SUCCESS;
}
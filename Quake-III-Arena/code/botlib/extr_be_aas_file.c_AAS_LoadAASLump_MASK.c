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
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* FS_Read ) (char*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* FS_FCloseFile ) (int /*<<< orphan*/ ) ;scalar_t__ (* FS_Seek ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FS_SEEK_SET ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  PRT_WARNING ; 
 TYPE_1__ botimport ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 

char *FUNC7(fileHandle_t fp, int offset, int length, int *lastoffset, int size)
{
	char *buf;
	//
	if (!length)
	{
		//just alloc a dummy
		return (char *) FUNC2(size+1);
	} //end if
	//seek to the data
	if (offset != *lastoffset)
	{
		botimport.Print(PRT_WARNING, "AAS file not sequentially read\n");
		if (botimport.FS_Seek(fp, offset, FS_SEEK_SET))
		{
			FUNC1("can't seek to aas lump\n");
			FUNC0();
			botimport.FS_FCloseFile(fp);
			return 0;
		} //end if
	} //end if
	//allocate memory
	buf = (char *) FUNC2(length+1);
	//read the data
	if (length)
	{
		botimport.FS_Read(buf, length, fp );
		*lastoffset += length;
	} //end if
	return buf;
}
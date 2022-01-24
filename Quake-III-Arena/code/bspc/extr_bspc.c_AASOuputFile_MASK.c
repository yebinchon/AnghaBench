#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* filename; int /*<<< orphan*/  origname; } ;
typedef  TYPE_1__ quakefile_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

void FUNC9(quakefile_t *qf, char *outputpath, char *filename)
{
	char ext[MAX_PATH];

	//
	if (FUNC8(outputpath))
	{
		FUNC6(filename, outputpath);
		//append the bsp file base
		FUNC0(filename, MAX_PATH);
		FUNC2(qf->origname, &filename[FUNC8(filename)]);
		//append .aas
		FUNC5(filename, ".aas");
		return;
	} //end if
	//
	FUNC3(qf->filename, ext);
	if (!FUNC7(ext, "pk3") || !FUNC7(ext, "pak") || !FUNC7(ext, "sin"))
	{
		FUNC6(filename, qf->filename);
		while(FUNC8(filename) &&
				filename[FUNC8(filename)-1] != '\\' &&
				filename[FUNC8(filename)-1] != '/')
		{
			filename[FUNC8(filename)-1] = '\0';
		} //end while
		FUNC5(filename, "maps");
		if (FUNC4(filename, 0x04)) FUNC1(filename);
		//append the bsp file base
		FUNC0(filename, MAX_PATH);
		FUNC2(qf->origname, &filename[FUNC8(filename)]);
		//append .aas
		FUNC5(filename, ".aas");
	} //end if
	else
	{
		FUNC6(filename, qf->filename);
		while(FUNC8(filename) &&
				filename[FUNC8(filename)-1] != '.')
		{
			filename[FUNC8(filename)-1] = '\0';
		} //end while
		FUNC5(filename, "aas");
	} //end else
}
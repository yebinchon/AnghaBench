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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* lumpcache ; 
 void* lumpinfo ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int numlumps ; 

void FUNC4 (char** filenames)
{	
    int		size;
    
    // open all the files, load headers, and count lumps
    numlumps = 0;

    // will be realloced as lumps are added
    lumpinfo = FUNC2(1);	

    for ( ; *filenames ; filenames++)
	FUNC1 (*filenames);

    if (!numlumps)
	FUNC0 ("W_InitFiles: no files found");
    
    // set up caching
    size = numlumps * sizeof(*lumpcache);
    lumpcache = FUNC2 (size);
    
    if (!lumpcache)
	FUNC0 ("Couldn't allocate lumpcache");

    FUNC3 (lumpcache,0, size);
}
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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,void**) ; 
 void** lumpcache ; 
 unsigned int numlumps ; 

void*
FUNC5
( int		lump,
  int		tag )
{
    byte*	ptr;

    if ((unsigned)lump >= numlumps)
	FUNC0 ("W_CacheLumpNum: %i >= numlumps",lump);
		
    if (!lumpcache[lump])
    {
	// read the lump in
	
	//printf ("cache miss on lump %i\n",lump);
	ptr = FUNC4 (FUNC1 (lump), tag, &lumpcache[lump]);
	FUNC2 (lump, lumpcache[lump]);
    }
    else
    {
	//printf ("cache hit on lump %i\n",lump);
	FUNC3 (lumpcache[lump],tag);
    }
	
    return lumpcache[lump];
}
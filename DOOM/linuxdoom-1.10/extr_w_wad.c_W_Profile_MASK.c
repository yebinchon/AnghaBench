#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ tag; } ;
typedef  TYPE_1__ memblock_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ PU_PURGELEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int** info ; 
 void** lumpcache ; 
 TYPE_2__* lumpinfo ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int numlumps ; 
 size_t profilecount ; 

void FUNC4 (void)
{
    int		i;
    memblock_t*	block;
    void*	ptr;
    char	ch;
    FILE*	f;
    int		j;
    char	name[9];
	
	
    for (i=0 ; i<numlumps ; i++)
    {	
	ptr = lumpcache[i];
	if (!ptr)
	{
	    ch = ' ';
	    continue;
	}
	else
	{
	    block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));
	    if (block->tag < PU_PURGELEVEL)
		ch = 'S';
	    else
		ch = 'P';
	}
	info[i][profilecount] = ch;
    }
    profilecount++;
	
    f = FUNC1 ("waddump.txt","w");
    name[8] = 0;

    for (i=0 ; i<numlumps ; i++)
    {
	FUNC3 (name,lumpinfo[i].name,8);

	for (j=0 ; j<8 ; j++)
	    if (!name[j])
		break;

	for ( ; j<8 ; j++)
	    name[j] = ' ';

	FUNC2 (f,"%s ",name);

	for (j=0 ; j<profilecount ; j++)
	    FUNC2 (f,"    %c",info[i][j]);

	FUNC2 (f,"\n");
    }
    FUNC0 (f);
}
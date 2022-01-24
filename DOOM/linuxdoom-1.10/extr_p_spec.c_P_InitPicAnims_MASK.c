#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int istexture; int /*<<< orphan*/  speed; int /*<<< orphan*/  endname; int /*<<< orphan*/  startname; } ;
struct TYPE_4__ {int picnum; int basepic; int istexture; int numpics; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* animdefs ; 
 TYPE_1__* anims ; 
 TYPE_1__* lastanim ; 

void FUNC5 (void)
{
    int		i;

    
    //	Init animation
    lastanim = anims;
    for (i=0 ; animdefs[i].istexture != -1 ; i++)
    {
	if (animdefs[i].istexture)
	{
	    // different episode ?
	    if (FUNC1(animdefs[i].startname) == -1)
		continue;	

	    lastanim->picnum = FUNC3 (animdefs[i].endname);
	    lastanim->basepic = FUNC3 (animdefs[i].startname);
	}
	else
	{
	    if (FUNC4(animdefs[i].startname) == -1)
		continue;

	    lastanim->picnum = FUNC2 (animdefs[i].endname);
	    lastanim->basepic = FUNC2 (animdefs[i].startname);
	}

	lastanim->istexture = animdefs[i].istexture;
	lastanim->numpics = lastanim->picnum - lastanim->basepic + 1;

	if (lastanim->numpics < 2)
	    FUNC0 ("P_InitPicAnims: bad cycle from %s to %s",
		     animdefs[i].startname,
		     animdefs[i].endname);
	
	lastanim->speed = animdefs[i].speed;
	lastanim++;
    }
	
}
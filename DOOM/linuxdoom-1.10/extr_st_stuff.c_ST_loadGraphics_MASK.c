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
typedef  int /*<<< orphan*/  patch_t ;

/* Variables and functions */
 int NUMCARDS ; 
 int /*<<< orphan*/  PU_STATIC ; 
 int ST_NUMPAINFACES ; 
 int ST_NUMSTRAIGHTFACES ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ *** arms ; 
 int /*<<< orphan*/ * armsbg ; 
 int consoleplayer ; 
 int /*<<< orphan*/ * faceback ; 
 scalar_t__* faces ; 
 int /*<<< orphan*/ ** keys ; 
 int /*<<< orphan*/ * sbar ; 
 int /*<<< orphan*/ ** shortnum ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,...) ; 
 int /*<<< orphan*/ ** tallnum ; 
 int /*<<< orphan*/ * tallpercent ; 

void FUNC2(void)
{

    int		i;
    int		j;
    int		facenum;
    
    char	namebuf[9];

    // Load the numbers, tall and short
    for (i=0;i<10;i++)
    {
	FUNC1(namebuf, "STTNUM%d", i);
	tallnum[i] = (patch_t *) FUNC0(namebuf, PU_STATIC);

	FUNC1(namebuf, "STYSNUM%d", i);
	shortnum[i] = (patch_t *) FUNC0(namebuf, PU_STATIC);
    }

    // Load percent key.
    //Note: why not load STMINUS here, too?
    tallpercent = (patch_t *) FUNC0("STTPRCNT", PU_STATIC);

    // key cards
    for (i=0;i<NUMCARDS;i++)
    {
	FUNC1(namebuf, "STKEYS%d", i);
	keys[i] = (patch_t *) FUNC0(namebuf, PU_STATIC);
    }

    // arms background
    armsbg = (patch_t *) FUNC0("STARMS", PU_STATIC);

    // arms ownership widgets
    for (i=0;i<6;i++)
    {
	FUNC1(namebuf, "STGNUM%d", i+2);

	// gray #
	arms[i][0] = (patch_t *) FUNC0(namebuf, PU_STATIC);

	// yellow #
	arms[i][1] = shortnum[i+2]; 
    }

    // face backgrounds for different color players
    FUNC1(namebuf, "STFB%d", consoleplayer);
    faceback = (patch_t *) FUNC0(namebuf, PU_STATIC);

    // status bar background bits
    sbar = (patch_t *) FUNC0("STBAR", PU_STATIC);

    // face states
    facenum = 0;
    for (i=0;i<ST_NUMPAINFACES;i++)
    {
	for (j=0;j<ST_NUMSTRAIGHTFACES;j++)
	{
	    FUNC1(namebuf, "STFST%d%d", i, j);
	    faces[facenum++] = FUNC0(namebuf, PU_STATIC);
	}
	FUNC1(namebuf, "STFTR%d0", i);	// turn right
	faces[facenum++] = FUNC0(namebuf, PU_STATIC);
	FUNC1(namebuf, "STFTL%d0", i);	// turn left
	faces[facenum++] = FUNC0(namebuf, PU_STATIC);
	FUNC1(namebuf, "STFOUCH%d", i);	// ouch!
	faces[facenum++] = FUNC0(namebuf, PU_STATIC);
	FUNC1(namebuf, "STFEVL%d", i);	// evil grin ;)
	faces[facenum++] = FUNC0(namebuf, PU_STATIC);
	FUNC1(namebuf, "STFKILL%d", i);	// pissed off
	faces[facenum++] = FUNC0(namebuf, PU_STATIC);
    }
    faces[facenum++] = FUNC0("STFGOD0", PU_STATIC);
    faces[facenum++] = FUNC0("STFDEAD0", PU_STATIC);

}
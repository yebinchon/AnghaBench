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
typedef  int /*<<< orphan*/  skill_t ;
struct TYPE_4__ {int viewz; int /*<<< orphan*/ * mo; scalar_t__ itemcount; scalar_t__ secretcount; scalar_t__ killcount; } ;
struct TYPE_3__ {int partime; scalar_t__ maxfrags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MAXINT ; 
 int MAXPLAYERS ; 
 scalar_t__ ML_BLOCKMAP ; 
 scalar_t__ ML_LINEDEFS ; 
 scalar_t__ ML_NODES ; 
 scalar_t__ ML_REJECT ; 
 scalar_t__ ML_SECTORS ; 
 scalar_t__ ML_SEGS ; 
 scalar_t__ ML_SIDEDEFS ; 
 scalar_t__ ML_SSECTORS ; 
 scalar_t__ ML_THINGS ; 
 scalar_t__ ML_VERTEXES ; 
 int /*<<< orphan*/  PU_LEVEL ; 
 scalar_t__ PU_PURGELEVEL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ bodyqueslot ; 
 scalar_t__ commercial ; 
 size_t consoleplayer ; 
 scalar_t__ deathmatch ; 
 int /*<<< orphan*/  deathmatch_p ; 
 int /*<<< orphan*/  deathmatchstarts ; 
 scalar_t__ debugfile ; 
 scalar_t__ gamemode ; 
 scalar_t__ iquehead ; 
 scalar_t__ iquetail ; 
 scalar_t__ leveltime ; 
 scalar_t__* playeringame ; 
 TYPE_2__* players ; 
 scalar_t__ precache ; 
 int /*<<< orphan*/  rejectmatrix ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 scalar_t__ totalitems ; 
 scalar_t__ totalkills ; 
 scalar_t__ totalsecret ; 
 TYPE_1__ wminfo ; 

void
FUNC21
( int		episode,
  int		map,
  int		playermask,
  skill_t	skill)
{
    int		i;
    char	lumpname[9];
    int		lumpnum;
	
    totalkills = totalitems = totalsecret = wminfo.maxfrags = 0;
    wminfo.partime = 180;
    for (i=0 ; i<MAXPLAYERS ; i++)
    {
	players[i].killcount = players[i].secretcount 
	    = players[i].itemcount = 0;
    }

    // Initial height of PointOfView
    // will be set by player think.
    players[consoleplayer].viewz = 1; 

    // Make sure all sounds are stopped before Z_FreeTags.
    FUNC14 ();			

    
#if 0 // UNUSED
    if (debugfile)
    {
	Z_FreeTags (PU_LEVEL, MAXINT);
	Z_FileDumpHeap (debugfile);
    }
    else
#endif
	FUNC19 (PU_LEVEL, PU_PURGELEVEL-1);


    // UNUSED W_Profile ();
    FUNC2 ();

    // if working with a devlopment map, reload it
    FUNC17 ();			
	   
    // find map name
    if ( gamemode == commercial)
    {
	if (map<10)
	    FUNC20 (lumpname,"map0%i", map);
	else
	    FUNC20 (lumpname,"map%i", map);
    }
    else
    {
	lumpname[0] = 'E';
	lumpname[1] = '0' + episode;
	lumpname[2] = 'M';
	lumpname[3] = '0' + map;
	lumpname[4] = 0;
    }

    lumpnum = FUNC16 (lumpname);
	
    leveltime = 0;
	
    // note: most of this ordering is important	
    FUNC3 (lumpnum+ML_BLOCKMAP);
    FUNC11 (lumpnum+ML_VERTEXES);
    FUNC6 (lumpnum+ML_SECTORS);
    FUNC8 (lumpnum+ML_SIDEDEFS);

    FUNC4 (lumpnum+ML_LINEDEFS);
    FUNC9 (lumpnum+ML_SSECTORS);
    FUNC5 (lumpnum+ML_NODES);
    FUNC7 (lumpnum+ML_SEGS);
	
    rejectmatrix = FUNC15 (lumpnum+ML_REJECT,PU_LEVEL);
    FUNC1 ();

    bodyqueslot = 0;
    deathmatch_p = deathmatchstarts;
    FUNC10 (lumpnum+ML_THINGS);
    
    // if deathmatch, randomly spawn the active players
    if (deathmatch)
    {
	for (i=0 ; i<MAXPLAYERS ; i++)
	    if (playeringame[i])
	    {
		players[i].mo = NULL;
		FUNC0 (i);
	    }
			
    }

    // clear special respawning que
    iquehead = iquetail = 0;		
	
    // set up world state
    FUNC12 ();
	
    // build subsector connect matrix
    //	UNUSED P_ConnectSubsectors ();

    // preload graphics
    if (precache)
	FUNC13 ();

    //printf ("free memory: 0x%x\n", Z_FreeMemory());

}
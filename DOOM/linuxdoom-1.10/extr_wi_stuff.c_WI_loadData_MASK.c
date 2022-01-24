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
typedef  int /*<<< orphan*/  patch_t ;
struct TYPE_4__ {int nanims; void** p; } ;
typedef  TYPE_1__ anim_t ;
struct TYPE_5__ {int epsd; } ;

/* Variables and functions */
 int MAXPLAYERS ; 
 int* NUMANIMS ; 
 int NUMCMAPS ; 
 int NUMMAPS ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  PU_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** anims ; 
 void* bg ; 
 void** bp ; 
 void* bstar ; 
 void* colon ; 
 scalar_t__ commercial ; 
 int /*<<< orphan*/  deathmatch ; 
 void* entering ; 
 void* finished ; 
 void* frags ; 
 scalar_t__ french ; 
 scalar_t__ gamemode ; 
 void* items ; 
 void* killers ; 
 void* kills ; 
 int /*<<< orphan*/ ** lnames ; 
 scalar_t__ netgame ; 
 void** num ; 
 void** p ; 
 void* par ; 
 void* percent ; 
 scalar_t__ retail ; 
 void* secret ; 
 void* sp_secret ; 
 void* splat ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,...) ; 
 void* star ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 void* sucks ; 
 void* time ; 
 void* total ; 
 void* victims ; 
 TYPE_2__* wbs ; 
 void* wiminus ; 
 void** yah ; 

void FUNC5(void)
{
    int		i;
    int		j;
    char	name[9];
    anim_t*	a;

    if (gamemode == commercial)
	FUNC4(name, "INTERPIC");
    else 
	FUNC3(name, "WIMAP%d", wbs->epsd);
    
    if ( gamemode == retail )
    {
      if (wbs->epsd == 3)
	FUNC4(name,"INTERPIC");
    }

    // background
    bg = FUNC1(name, PU_CACHE);    
    FUNC0(0, 0, 1, bg);


    // UNUSED unsigned char *pic = screens[1];
    // if (gamemode == commercial)
    // {
    // darken the background image
    // while (pic != screens[1] + SCREENHEIGHT*SCREENWIDTH)
    // {
    //   *pic = colormaps[256*25 + *pic];
    //   pic++;
    // }
    //}

    if (gamemode == commercial)
    {
	NUMCMAPS = 32;								
	lnames = (patch_t **) FUNC2(sizeof(patch_t*) * NUMCMAPS,
				       PU_STATIC, 0);
	for (i=0 ; i<NUMCMAPS ; i++)
	{								
	    FUNC3(name, "CWILV%2.2d", i);
	    lnames[i] = FUNC1(name, PU_STATIC);
	}					
    }
    else
    {
	lnames = (patch_t **) FUNC2(sizeof(patch_t*) * NUMMAPS,
				       PU_STATIC, 0);
	for (i=0 ; i<NUMMAPS ; i++)
	{
	    FUNC3(name, "WILV%d%d", wbs->epsd, i);
	    lnames[i] = FUNC1(name, PU_STATIC);
	}

	// you are here
	yah[0] = FUNC1("WIURH0", PU_STATIC);

	// you are here (alt.)
	yah[1] = FUNC1("WIURH1", PU_STATIC);

	// splat
	splat = FUNC1("WISPLAT", PU_STATIC); 
	
	if (wbs->epsd < 3)
	{
	    for (j=0;j<NUMANIMS[wbs->epsd];j++)
	    {
		a = &anims[wbs->epsd][j];
		for (i=0;i<a->nanims;i++)
		{
		    // MONDO HACK!
		    if (wbs->epsd != 1 || j != 8) 
		    {
			// animations
			FUNC3(name, "WIA%d%.2d%.2d", wbs->epsd, j, i);  
			a->p[i] = FUNC1(name, PU_STATIC);
		    }
		    else
		    {
			// HACK ALERT!
			a->p[i] = anims[1][4].p[i]; 
		    }
		}
	    }
	}
    }

    // More hacks on minus sign.
    wiminus = FUNC1("WIMINUS", PU_STATIC); 

    for (i=0;i<10;i++)
    {
	 // numbers 0-9
	FUNC3(name, "WINUM%d", i);     
	num[i] = FUNC1(name, PU_STATIC);
    }

    // percent sign
    percent = FUNC1("WIPCNT", PU_STATIC);

    // "finished"
    finished = FUNC1("WIF", PU_STATIC);

    // "entering"
    entering = FUNC1("WIENTER", PU_STATIC);

    // "kills"
    kills = FUNC1("WIOSTK", PU_STATIC);   

    // "scrt"
    secret = FUNC1("WIOSTS", PU_STATIC);

     // "secret"
    sp_secret = FUNC1("WISCRT2", PU_STATIC);

    // Yuck. 
    if (french)
    {
	// "items"
	if (netgame && !deathmatch)
	    items = FUNC1("WIOBJ", PU_STATIC);    
  	else
	    items = FUNC1("WIOSTI", PU_STATIC);
    } else
	items = FUNC1("WIOSTI", PU_STATIC);

    // "frgs"
    frags = FUNC1("WIFRGS", PU_STATIC);    

    // ":"
    colon = FUNC1("WICOLON", PU_STATIC); 

    // "time"
    time = FUNC1("WITIME", PU_STATIC);   

    // "sucks"
    sucks = FUNC1("WISUCKS", PU_STATIC);  

    // "par"
    par = FUNC1("WIPAR", PU_STATIC);   

    // "killers" (vertical)
    killers = FUNC1("WIKILRS", PU_STATIC);

    // "victims" (horiz)
    victims = FUNC1("WIVCTMS", PU_STATIC);

    // "total"
    total = FUNC1("WIMSTT", PU_STATIC);   

    // your face
    star = FUNC1("STFST01", PU_STATIC);

    // dead face
    bstar = FUNC1("STFDEAD0", PU_STATIC);    

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
	// "1,2,3,4"
	FUNC3(name, "STPB%d", i);      
	p[i] = FUNC1(name, PU_STATIC);

	// "1,2,3,4"
	FUNC3(name, "WIBP%d", i+1);     
	bp[i] = FUNC1(name, PU_STATIC);
    }

}
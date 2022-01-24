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
typedef  int /*<<< orphan*/  sfxinfo_t ;
struct TYPE_2__ {struct TYPE_2__* link; int /*<<< orphan*/  data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int NUMSFX ; 
 int /*<<< orphan*/  R_OK ; 
 TYPE_1__* S_sfx ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__* lengths ; 
 scalar_t__ longsound ; 
 char* FUNC5 (scalar_t__) ; 
 int numsounds ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ snd_verbose ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 

void
FUNC10
( int		c,
  char**	v )
{
    int		i;
    char*	name;
    char*	doom1wad;
    char*	doomwad;
    char*	doomuwad;
    char*	doom2wad;
    char*	doom2fwad;
    // Now where are TNT and Plutonia. Yuck.
    
    //	char *home;
    char*	doomwaddir;

    doomwaddir = FUNC3("DOOMWADDIR");

    if (!doomwaddir)
	doomwaddir = ".";

    doom1wad = FUNC5(FUNC9(doomwaddir)+1+9+1);
    FUNC7(doom1wad, "%s/doom1.wad", doomwaddir);

    doom2wad = FUNC5(FUNC9(doomwaddir)+1+9+1);
    FUNC7(doom2wad, "%s/doom2.wad", doomwaddir);

    doom2fwad = FUNC5(FUNC9(doomwaddir)+1+10+1);
    FUNC7(doom2fwad, "%s/doom2f.wad", doomwaddir);
    
    doomuwad = FUNC5(FUNC9(doomwaddir)+1+8+1);
    FUNC7(doomuwad, "%s/doomu.wad", doomwaddir);
    
    doomwad = FUNC5(FUNC9(doomwaddir)+1+8+1);
    FUNC7(doomwad, "%s/doom.wad", doomwaddir);

    //	home = getenv("HOME");
    //	if (!home)
    //	  derror("Please set $HOME to your home directory");
    //	sprintf(basedefault, "%s/.doomrc", home);


    for (i=1 ; i<c ; i++)
    {
	if (!FUNC8(v[i], "-quiet"))
	{
	    snd_verbose = 0;
	}
    }

    numsounds = NUMSFX;
    longsound = 0;

    if (! FUNC0(doom2fwad, R_OK) )
	name = doom2fwad;
    else if (! FUNC0(doom2wad, R_OK) )
	name = doom2wad;
    else if (! FUNC0(doomuwad, R_OK) )
	name = doomuwad;
    else if (! FUNC0(doomwad, R_OK) )
	name = doomwad;
    else if (! FUNC0(doom1wad, R_OK) )
	name = doom1wad;
    // else if (! access(DEVDATA "doom2.wad", R_OK) )
    //   name = DEVDATA "doom2.wad";
    //   else if (! access(DEVDATA "doom.wad", R_OK) )
    //   name = DEVDATA "doom.wad";
    else
    {
	FUNC2(stderr, "Could not find wadfile anywhere\n");
	FUNC1(-1);
    }

    
    FUNC6(name);
    if (snd_verbose)
	FUNC2(stderr, "loading from [%s]\n", name);

    for (i=1 ; i<NUMSFX ; i++)
    {
	if (!S_sfx[i].link)
	{
	    S_sfx[i].data = FUNC4(S_sfx[i].name, &lengths[i]);
	    if (longsound < lengths[i]) longsound = lengths[i];
	} else {
	    S_sfx[i].data = S_sfx[i].link->data;
	    lengths[i] = lengths[(S_sfx[i].link - S_sfx)/sizeof(sfxinfo_t)];
	}
	// test only
	//  {
	//  int fd;
	//  char name[10];
	//  sprintf(name, "sfx%d", i);
	//  fd = open(name, O_WRONLY|O_CREAT, 0644);
	//  write(fd, S_sfx[i].data, lengths[i]);
	//  close(fd);
	//  }
    }

}
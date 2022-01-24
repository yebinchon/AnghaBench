#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; int /*<<< orphan*/  handle; void* data; scalar_t__ lumpnum; } ;
typedef  TYPE_1__ musicinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int NUMMUSIC ; 
 int /*<<< orphan*/  PU_MUSIC ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* S_music ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 int mus_None ; 
 TYPE_1__* mus_playing ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

void
FUNC7
( int			musicnum,
  int			looping )
{
    musicinfo_t*	music;
    char		namebuf[9];

    if ( (musicnum <= mus_None)
	 || (musicnum >= NUMMUSIC) )
    {
	FUNC0("Bad music number %d", musicnum);
    }
    else
	music = &S_music[musicnum];

    if (mus_playing == music)
	return;

    // shutdown old music
    FUNC3();

    // get lumpnum if neccessary
    if (!music->lumpnum)
    {
	FUNC6(namebuf, "d_%s", music->name);
	music->lumpnum = FUNC5(namebuf);
    }

    // load & register it
    music->data = (void *) FUNC4(music->lumpnum, PU_MUSIC);
    music->handle = FUNC2(music->data);

    // play it
    FUNC1(music->handle, looping);

    mus_playing = music;
}
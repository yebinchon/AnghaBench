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
struct TYPE_2__ {int /*<<< orphan*/  mo; } ;

/* Variables and functions */
 size_t BACKUPTICS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ advancedemo ; 
 int consoleplayer ; 
 int /*<<< orphan*/  debugfile ; 
 scalar_t__ demorecording ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  gametic ; 
 size_t maketic ; 
 int /*<<< orphan*/ ** netcmds ; 
 TYPE_1__* players ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 scalar_t__ singletics ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 

void FUNC18 (void)
{
    if (demorecording)
	FUNC3 ();
		
    if (FUNC11 ("-debugfile"))
    {
	char    filename[20];
	FUNC17 (filename,"debug%i.txt",consoleplayer);
	FUNC16 ("debug output to: %s\n",filename);
	debugfile = FUNC15 (filename,"w");
    }
	
    FUNC6 ();

    while (1)
    {
	// frame syncronous IO operations
	FUNC7 ();                
	
	// process one or more tics
	if (singletics)
	{
	    FUNC8 ();
	    FUNC2 ();
	    FUNC4 (&netcmds[consoleplayer][maketic%BACKUPTICS]);
	    if (advancedemo)
		FUNC1 ();
	    FUNC12 ();
	    FUNC5 ();
	    gametic++;
	    maketic++;
	}
	else
	{
	    FUNC14 (); // will run at least one tic
	}
		
	FUNC13 (players[consoleplayer].mo);// move positional sounds

	// Update display, next frame, with current state.
	FUNC0 ();

#ifndef SNDSERV
	// Sound mixing for the buffer is snychronous.
	FUNC10();
#endif	
	// Synchronous sound output is explicitly called.
#ifndef SNDINTR
	// Update sound output.
	FUNC9();
#endif
    }
}
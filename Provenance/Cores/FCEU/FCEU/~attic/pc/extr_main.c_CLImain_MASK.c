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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ CurGame ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  DrBaseDirectory ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ cpalette ; 
 int /*<<< orphan*/  ntsccol ; 
 int /*<<< orphan*/  ntschue ; 
 int /*<<< orphan*/  ntsctint ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

int FUNC16(int argc, char *argv[])
{
	int ret;

	if(!(ret=FUNC5()))
         return(0);

        DrBaseDirectory=FUNC9();
	FUNC7(DrBaseDirectory);

	FUNC1();

	#ifdef EXTGUI
	if(argc==2 && !strcmp(argv[1],"-help")) // I hope no one has a game named "-help" :b
	#else
        if(argc<=1) 
	#endif
        {
         FUNC14(argv[0]);
         return(0);
        }

        FUNC11();
        FUNC2(argc-2,&argv[1]);
	FUNC8(ntsccol, ntsctint, ntschue);
	if(cpalette)
	 FUNC10();

	/* All the config files and arguments are parsed now. */
	#ifdef EXTGUI
        return(1);

	#else
        if(!FUNC12(argv[argc-1]))
        {
         FUNC4();
         return(0);
        }

	while(CurGame)
	 FUNC3();

	#if(0)
	{
	 int x;
	 for(x=1;x<argc;x++) 
         { LoadGame(argv[x]); while(CurGame) DoFun(); }
	}
	#endif

        FUNC0();
        
	FUNC13();

        FUNC6();

	#endif
        return(1);
}
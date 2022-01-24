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
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (char*) ; 
 double FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,char**) ; 
 int /*<<< orphan*/  FUNC19 (int,char**) ; 
 int /*<<< orphan*/  FUNC20 (int,char**) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 double FUNC22 (char*) ; 
 void* FUNC23 (char*) ; 
 void* drawflag ; 
 void* fakemap ; 
 void* fulldetail ; 
 int /*<<< orphan*/  gamedir ; 
 void* glview ; 
 void* leaktest ; 
 double microvolume ; 
 char* name ; 
 void* noCurveBrushes ; 
 void* nodetail ; 
 void* nofill ; 
 void* nofog ; 
 void* noopt ; 
 void* nosubdivide ; 
 void* notjunc ; 
 void* nowater ; 
 void* numthreads ; 
 void* onlyents ; 
 void* onlytextures ; 
 char* outbase ; 
 void* qtrue ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int samplesize ; 
 void* showseams ; 
 char* source ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,char*) ; 
 scalar_t__ FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 scalar_t__ FUNC28 (char*) ; 
 char* tempsource ; 
 void* testExpand ; 
 void* verbose ; 
 void* verboseentities ; 

int FUNC29 (int argc, char **argv) {
	int		i;
	double		start, end;
	char		path[1024];

	FUNC21 ("Q3Map v1.0s (c) 1999 Id Software Inc.\n");
  
	if ( argc < 2 ) {
		FUNC3 ("usage: q3map [options] mapfile");
	}

	// check for general program options
	if (!FUNC26(argv[1], "-info")) {
		FUNC0( argc - 2, argv + 2 );
		return 0;
	}
	if (!FUNC26(argv[1], "-light")) {
		FUNC7( argc - 1, argv + 1 );
		return 0;
	}
	if (!FUNC26(argv[1], "-vlight")) {
		FUNC18( argc - 1, argv + 1 );
		return 0;
	}
	if (!FUNC26(argv[1], "-vsound")) {
		FUNC19( argc - 1, argv + 1 );
		return 0;
	}
	if (!FUNC26(argv[1], "-vis")) {
		FUNC20( argc - 1, argv + 1 );
		return 0;
	}

	// do a bsp if nothing else was specified

	FUNC21 ("---- q3map ----\n");

  tempsource[0] = '\0';

	for (i=1 ; i<argc ; i++)
	{
		if (!FUNC26(argv[i],"-tempname"))
    {
      FUNC27(tempsource, argv[++i]);
    }
		else if (!FUNC26(argv[i],"-threads"))
		{
			numthreads = FUNC23 (argv[i+1]);
			i++;
		}
		else if (!FUNC26(argv[i],"-glview"))
		{
			glview = qtrue;
		}
		else if (!FUNC26(argv[i], "-v"))
		{
			FUNC21 ("verbose = true\n");
			verbose = qtrue;
		}
		else if (!FUNC26(argv[i], "-draw"))
		{
			FUNC21 ("drawflag = true\n");
			drawflag = qtrue;
		}
		else if (!FUNC26(argv[i], "-nowater"))
		{
			FUNC21 ("nowater = true\n");
			nowater = qtrue;
		}
		else if (!FUNC26(argv[i], "-noopt"))
		{
			FUNC21 ("noopt = true\n");
			noopt = qtrue;
		}
		else if (!FUNC26(argv[i], "-nofill"))
		{
			FUNC21 ("nofill = true\n");
			nofill = qtrue;
		}
		else if (!FUNC26(argv[i], "-nodetail"))
		{
			FUNC21 ("nodetail = true\n");
			nodetail = qtrue;
		}
		else if (!FUNC26(argv[i], "-fulldetail"))
		{
			FUNC21 ("fulldetail = true\n");
			fulldetail = qtrue;
		}
		else if (!FUNC26(argv[i], "-onlyents"))
		{
			FUNC21 ("onlyents = true\n");
			onlyents = qtrue;
		}
		else if (!FUNC26(argv[i], "-onlytextures"))
		{
			FUNC21 ("onlytextures = true\n");	// FIXME: make work again!
			onlytextures = qtrue;
		}
		else if (!FUNC26(argv[i], "-micro"))
		{
			microvolume = FUNC22(argv[i+1]);
			FUNC21 ("microvolume = %f\n", microvolume);
			i++;
		}
		else if (!FUNC26(argv[i], "-nofog"))
		{
			FUNC21 ("nofog = true\n");
			nofog = qtrue;
		}
		else if (!FUNC26(argv[i], "-nosubdivide"))
		{
			FUNC21 ("nosubdivide = true\n");
			nosubdivide = qtrue;
		}
		else if (!FUNC26(argv[i], "-leaktest"))
		{
			FUNC21 ("leaktest = true\n");
			leaktest = qtrue;
		}
		else if (!FUNC26(argv[i], "-verboseentities"))
		{
			FUNC21 ("verboseentities = true\n");
			verboseentities = qtrue;
		}
		else if (!FUNC26(argv[i], "-nocurves"))
		{
			noCurveBrushes = qtrue;
			FUNC21 ("no curve brushes\n");
		}
		else if (!FUNC26(argv[i], "-notjunc"))
		{
			notjunc = qtrue;
			FUNC21 ("no tjunction fixing\n");
		}
		else if (!FUNC26(argv[i], "-expand"))
		{
			testExpand = qtrue;
			FUNC21 ("Writing expanded.map.\n");
		}
		else if (!FUNC26(argv[i], "-showseams"))
		{
			showseams = qtrue;
			FUNC21 ("Showing seams on terrain.\n");
		}
		else if (!FUNC26 (argv[i],"-tmpout"))
		{
			FUNC27 (outbase, "/tmp");
		}
		else if (!FUNC26 (argv[i],"-fakemap"))
		{
			fakemap = qtrue;
			FUNC21( "will generate fakemap.map\n");
		}
		else if (!FUNC26(argv[i], "-samplesize"))
		{
			samplesize = FUNC23(argv[i+1]);
			if (samplesize < 1) samplesize = 1;
			i++;
			FUNC21("lightmap sample size is %dx%d units\n", samplesize, samplesize);
		}
		else if (argv[i][0] == '-')
			FUNC3 ("Unknown option \"%s\"", argv[i]);
		else
			break;
	}

	if (i != argc - 1)
		FUNC3 ("usage: q3map [options] mapfile");

	start = FUNC5 ();

	FUNC17 ();
	//numthreads = 1;		// multiple threads aren't helping because of heavy malloc use
	FUNC15 (argv[i]);

#ifdef _WIN32
  InitPakFile(gamedir, NULL);
#endif

	FUNC27 (source, FUNC4 (argv[i]));
	FUNC16 (source);

	// delete portal and line files
	FUNC25 (path, "%s.prt", source);
	FUNC24 (path);
	FUNC25 (path, "%s.lin", source);
	FUNC24 (path);

	FUNC27 (name, FUNC4 (argv[i]));	
	if ( FUNC26(name + FUNC28(name) - 4, ".reg" ) ) {
		// if we are doing a full map, delete the last saved region map
		FUNC25 (path, "%s.reg", source);
		FUNC24 (path);

		FUNC1 (name, ".map");	// might be .reg
	}

	//
	// if onlyents, just grab the entites and resave
	//
	if ( onlyents ) {
		FUNC10();
		return 0;
	}

	//
	// if onlytextures, just grab the textures and resave
	//
	if ( onlytextures ) {
		FUNC11();
		return 0;
	}

	//
	// start from scratch
	//
	FUNC9();

  // load original file from temp spot in case it was renamed by the editor on the way in
  if (FUNC28(tempsource) > 0) {
	  FUNC8 (tempsource);
  } else {
	  FUNC8 (name);
  }

	FUNC14 ();
	FUNC13 ();

	FUNC12 ();

	FUNC2();

	end = FUNC5 ();
	FUNC21 ("%5.0f seconds elapsed\n", end-start);

  // remove temp name if appropriate
  if (FUNC28(tempsource) > 0) {
    FUNC24(tempsource);
  }

	return 0;
}
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
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (double,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 double FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (double) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (double) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 char* FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (double) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 double areaScale ; 
 double FUNC20 (char*) ; 
 void* FUNC21 (char*) ; 
 void* dump ; 
 int /*<<< orphan*/ * entities ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 void* extra ; 
 void* extraWide ; 
 int /*<<< orphan*/  gamedir ; 
 int /*<<< orphan*/ * gridSize ; 
 void* lightmapBorder ; 
 void* noSurfaces ; 
 void* nogridlighting ; 
 void* notrace ; 
 void* novertexlighting ; 
 void* numthreads ; 
 void* patchshadows ; 
 double pointScale ; 
 void* qfalse ; 
 void* qtrue ; 
 int samplesize ; 
 double source ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (double,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (char const*) ; 
 void* verbose ; 

int FUNC27 (int argc, char **argv) {
	int			i;
	double		start, end;
	const char	*value;

	FUNC19 ("----- Lighting ----\n");

	verbose = qfalse;

	for (i=1 ; i<argc ; i++) {
		if (!FUNC24(argv[i],"-tempname"))
    {
      i++;
    } else if (!FUNC24(argv[i],"-v")) {
			verbose = qtrue;
		} else if (!FUNC24(argv[i],"-threads")) {
			numthreads = FUNC21 (argv[i+1]);
			i++;
		} else if (!FUNC24(argv[i],"-area")) {
			areaScale *= FUNC20(argv[i+1]);
			FUNC19 ("area light scaling at %f\n", areaScale);
			i++;
		} else if (!FUNC24(argv[i],"-point")) {
			pointScale *= FUNC20(argv[i+1]);
			FUNC19 ("point light scaling at %f\n", pointScale);
			i++;
		} else if (!FUNC24(argv[i],"-notrace")) {
			notrace = qtrue;
			FUNC19 ("No occlusion tracing\n");
		} else if (!FUNC24(argv[i],"-patchshadows")) {
			patchshadows = qtrue;
			FUNC19 ("Patch shadow casting enabled\n");
		} else if (!FUNC24(argv[i],"-extra")) {
			extra = qtrue;
			FUNC19 ("Extra detail tracing\n");
		} else if (!FUNC24(argv[i],"-extrawide")) {
			extra = qtrue;
			extraWide = qtrue;
			FUNC19 ("Extra wide detail tracing\n");
		} else if (!FUNC24(argv[i], "-samplesize")) {
			samplesize = FUNC21(argv[i+1]);
			if (samplesize < 1) samplesize = 1;
			i++;
			FUNC19("lightmap sample size is %dx%d units\n", samplesize, samplesize);
		} else if (!FUNC24(argv[i], "-novertex")) {
			novertexlighting = qtrue;
			FUNC19("no vertex lighting = true\n");
		} else if (!FUNC24(argv[i], "-nogrid")) {
			nogridlighting = qtrue;
			FUNC19("no grid lighting = true\n");
		} else if (!FUNC24(argv[i],"-border")) {
			lightmapBorder = qtrue;
			FUNC19 ("Adding debug border to lightmaps\n");
		} else if (!FUNC24(argv[i],"-nosurf")) {
			noSurfaces = qtrue;
			FUNC19 ("Not tracing against surfaces\n" );
		} else if (!FUNC24(argv[i],"-dump")) {
			dump = qtrue;
			FUNC19 ("Dumping occlusion maps\n");
		} else {
			break;
		}
	}

	FUNC16 ();

	if (i != argc - 1) {
		FUNC19("usage: q3map -light [-<switch> [-<switch> ...]] <mapname>\n"
				"\n"
				"Switches:\n"
				"   v              = verbose output\n"
				"   threads <X>    = set number of threads to X\n"
				"   area <V>       = set the area light scale to V\n"
				"   point <W>      = set the point light scale to W\n"
				"   notrace        = don't cast any shadows\n"
				"   extra          = enable super sampling for anti-aliasing\n"
				"   extrawide      = same as extra but smoothen more\n"
				"   nogrid         = don't calculate light grid for dynamic model lighting\n"
				"   novertex       = don't calculate vertex lighting\n"
				"   samplesize <N> = set the lightmap pixel size to NxN units\n");
		FUNC22(0);
	}

	start = FUNC6 ();

	FUNC14 (argv[i]);	

#ifdef _WIN32
	InitPakFile(gamedir, NULL);
#endif

	FUNC25 (source, FUNC4(argv[i]));
	FUNC15 (source);
	FUNC3 (source, ".bsp");

	FUNC11();

	FUNC19 ("reading %s\n", source);

	FUNC10 (source);

	FUNC5();

	FUNC12();

	value = FUNC17( &entities[0], "gridsize" );
	if (FUNC26(value)) {
		FUNC23( value, "%f %f %f", &gridSize[0], &gridSize[1], &gridSize[2] );
		FUNC19("grid size = {%1.1f, %1.1f, %1.1f}\n", gridSize[0], gridSize[1], gridSize[2]);
	}

	FUNC1();

	FUNC8();

	FUNC13();

	FUNC0();

	FUNC2();

	FUNC9();

	FUNC19 ("writing %s\n", source);
	FUNC18 (source);

	end = FUNC6 ();
	FUNC19 ("%5.0f seconds elapsed\n", end-start);
	
	return 0;
}
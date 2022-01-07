
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CountLightmaps () ;
 int CreateFilters () ;
 int CreateSurfaceLights () ;
 int DefaultExtension (double,char*) ;
 int ExpandArg (char*) ;
 int FindSkyBrushes () ;
 double I_FloatTime () ;
 int InitPakFile (int ,int *) ;
 int InitTrace () ;
 int LightWorld () ;
 int LoadBSPFile (double) ;
 int LoadShaderInfo () ;
 int ParseEntities () ;
 int SetEntityOrigins () ;
 int SetQdirFromPath (char*) ;
 int StripExtension (double) ;
 int ThreadSetDefault () ;
 char* ValueForKey (int *,char*) ;
 int WriteBSPFile (double) ;
 int _printf (char*,...) ;
 double areaScale ;
 double atof (char*) ;
 void* atoi (char*) ;
 void* dump ;
 int * entities ;
 int exit (int ) ;
 void* extra ;
 void* extraWide ;
 int gamedir ;
 int * gridSize ;
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
 int sscanf (char const*,char*,int *,int *,int *) ;
 int strcmp (char*,char*) ;
 int strcpy (double,int ) ;
 scalar_t__ strlen (char const*) ;
 void* verbose ;

int LightMain (int argc, char **argv) {
 int i;
 double start, end;
 const char *value;

 _printf ("----- Lighting ----\n");

 verbose = qfalse;

 for (i=1 ; i<argc ; i++) {
  if (!strcmp(argv[i],"-tempname"))
    {
      i++;
    } else if (!strcmp(argv[i],"-v")) {
   verbose = qtrue;
  } else if (!strcmp(argv[i],"-threads")) {
   numthreads = atoi (argv[i+1]);
   i++;
  } else if (!strcmp(argv[i],"-area")) {
   areaScale *= atof(argv[i+1]);
   _printf ("area light scaling at %f\n", areaScale);
   i++;
  } else if (!strcmp(argv[i],"-point")) {
   pointScale *= atof(argv[i+1]);
   _printf ("point light scaling at %f\n", pointScale);
   i++;
  } else if (!strcmp(argv[i],"-notrace")) {
   notrace = qtrue;
   _printf ("No occlusion tracing\n");
  } else if (!strcmp(argv[i],"-patchshadows")) {
   patchshadows = qtrue;
   _printf ("Patch shadow casting enabled\n");
  } else if (!strcmp(argv[i],"-extra")) {
   extra = qtrue;
   _printf ("Extra detail tracing\n");
  } else if (!strcmp(argv[i],"-extrawide")) {
   extra = qtrue;
   extraWide = qtrue;
   _printf ("Extra wide detail tracing\n");
  } else if (!strcmp(argv[i], "-samplesize")) {
   samplesize = atoi(argv[i+1]);
   if (samplesize < 1) samplesize = 1;
   i++;
   _printf("lightmap sample size is %dx%d units\n", samplesize, samplesize);
  } else if (!strcmp(argv[i], "-novertex")) {
   novertexlighting = qtrue;
   _printf("no vertex lighting = true\n");
  } else if (!strcmp(argv[i], "-nogrid")) {
   nogridlighting = qtrue;
   _printf("no grid lighting = true\n");
  } else if (!strcmp(argv[i],"-border")) {
   lightmapBorder = qtrue;
   _printf ("Adding debug border to lightmaps\n");
  } else if (!strcmp(argv[i],"-nosurf")) {
   noSurfaces = qtrue;
   _printf ("Not tracing against surfaces\n" );
  } else if (!strcmp(argv[i],"-dump")) {
   dump = qtrue;
   _printf ("Dumping occlusion maps\n");
  } else {
   break;
  }
 }

 ThreadSetDefault ();

 if (i != argc - 1) {
  _printf("usage: q3map -light [-<switch> [-<switch> ...]] <mapname>\n"
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
  exit(0);
 }

 start = I_FloatTime ();

 SetQdirFromPath (argv[i]);





 strcpy (source, ExpandArg(argv[i]));
 StripExtension (source);
 DefaultExtension (source, ".bsp");

 LoadShaderInfo();

 _printf ("reading %s\n", source);

 LoadBSPFile (source);

 FindSkyBrushes();

 ParseEntities();

 value = ValueForKey( &entities[0], "gridsize" );
 if (strlen(value)) {
  sscanf( value, "%f %f %f", &gridSize[0], &gridSize[1], &gridSize[2] );
  _printf("grid size = {%1.1f, %1.1f, %1.1f}\n", gridSize[0], gridSize[1], gridSize[2]);
 }

 CreateFilters();

 InitTrace();

 SetEntityOrigins();

 CountLightmaps();

 CreateSurfaceLights();

 LightWorld();

 _printf ("writing %s\n", source);
 WriteBSPFile (source);

 end = I_FloatTime ();
 _printf ("%5.0f seconds elapsed\n", end-start);

 return 0;
}

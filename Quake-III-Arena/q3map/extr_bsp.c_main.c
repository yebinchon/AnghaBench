
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Bspinfo (int,char**) ;
 int DefaultExtension (char*,char*) ;
 int EndBSPFile () ;
 int Error (char*,...) ;
 char* ExpandArg (char*) ;
 double I_FloatTime () ;
 int InitPakFile (int ,int *) ;
 int LightMain (int,char**) ;
 int LoadMapFile (char*) ;
 int LoadShaderInfo () ;
 int OnlyEnts () ;
 int OnlyTextures () ;
 int ProcessModels () ;
 int SetLightStyles () ;
 int SetModelNumbers () ;
 int SetQdirFromPath (char*) ;
 int StripExtension (char*) ;
 int ThreadSetDefault () ;
 int VLightMain (int,char**) ;
 int VSoundMain (int,char**) ;
 int VisMain (int,char**) ;
 int _printf (char*,...) ;
 double atof (char*) ;
 void* atoi (char*) ;
 void* drawflag ;
 void* fakemap ;
 void* fulldetail ;
 int gamedir ;
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
 int remove (char*) ;
 int samplesize ;
 void* showseams ;
 char* source ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* tempsource ;
 void* testExpand ;
 void* verbose ;
 void* verboseentities ;

int main (int argc, char **argv) {
 int i;
 double start, end;
 char path[1024];

 _printf ("Q3Map v1.0s (c) 1999 Id Software Inc.\n");

 if ( argc < 2 ) {
  Error ("usage: q3map [options] mapfile");
 }


 if (!strcmp(argv[1], "-info")) {
  Bspinfo( argc - 2, argv + 2 );
  return 0;
 }
 if (!strcmp(argv[1], "-light")) {
  LightMain( argc - 1, argv + 1 );
  return 0;
 }
 if (!strcmp(argv[1], "-vlight")) {
  VLightMain( argc - 1, argv + 1 );
  return 0;
 }
 if (!strcmp(argv[1], "-vsound")) {
  VSoundMain( argc - 1, argv + 1 );
  return 0;
 }
 if (!strcmp(argv[1], "-vis")) {
  VisMain( argc - 1, argv + 1 );
  return 0;
 }



 _printf ("---- q3map ----\n");

  tempsource[0] = '\0';

 for (i=1 ; i<argc ; i++)
 {
  if (!strcmp(argv[i],"-tempname"))
    {
      strcpy(tempsource, argv[++i]);
    }
  else if (!strcmp(argv[i],"-threads"))
  {
   numthreads = atoi (argv[i+1]);
   i++;
  }
  else if (!strcmp(argv[i],"-glview"))
  {
   glview = qtrue;
  }
  else if (!strcmp(argv[i], "-v"))
  {
   _printf ("verbose = true\n");
   verbose = qtrue;
  }
  else if (!strcmp(argv[i], "-draw"))
  {
   _printf ("drawflag = true\n");
   drawflag = qtrue;
  }
  else if (!strcmp(argv[i], "-nowater"))
  {
   _printf ("nowater = true\n");
   nowater = qtrue;
  }
  else if (!strcmp(argv[i], "-noopt"))
  {
   _printf ("noopt = true\n");
   noopt = qtrue;
  }
  else if (!strcmp(argv[i], "-nofill"))
  {
   _printf ("nofill = true\n");
   nofill = qtrue;
  }
  else if (!strcmp(argv[i], "-nodetail"))
  {
   _printf ("nodetail = true\n");
   nodetail = qtrue;
  }
  else if (!strcmp(argv[i], "-fulldetail"))
  {
   _printf ("fulldetail = true\n");
   fulldetail = qtrue;
  }
  else if (!strcmp(argv[i], "-onlyents"))
  {
   _printf ("onlyents = true\n");
   onlyents = qtrue;
  }
  else if (!strcmp(argv[i], "-onlytextures"))
  {
   _printf ("onlytextures = true\n");
   onlytextures = qtrue;
  }
  else if (!strcmp(argv[i], "-micro"))
  {
   microvolume = atof(argv[i+1]);
   _printf ("microvolume = %f\n", microvolume);
   i++;
  }
  else if (!strcmp(argv[i], "-nofog"))
  {
   _printf ("nofog = true\n");
   nofog = qtrue;
  }
  else if (!strcmp(argv[i], "-nosubdivide"))
  {
   _printf ("nosubdivide = true\n");
   nosubdivide = qtrue;
  }
  else if (!strcmp(argv[i], "-leaktest"))
  {
   _printf ("leaktest = true\n");
   leaktest = qtrue;
  }
  else if (!strcmp(argv[i], "-verboseentities"))
  {
   _printf ("verboseentities = true\n");
   verboseentities = qtrue;
  }
  else if (!strcmp(argv[i], "-nocurves"))
  {
   noCurveBrushes = qtrue;
   _printf ("no curve brushes\n");
  }
  else if (!strcmp(argv[i], "-notjunc"))
  {
   notjunc = qtrue;
   _printf ("no tjunction fixing\n");
  }
  else if (!strcmp(argv[i], "-expand"))
  {
   testExpand = qtrue;
   _printf ("Writing expanded.map.\n");
  }
  else if (!strcmp(argv[i], "-showseams"))
  {
   showseams = qtrue;
   _printf ("Showing seams on terrain.\n");
  }
  else if (!strcmp (argv[i],"-tmpout"))
  {
   strcpy (outbase, "/tmp");
  }
  else if (!strcmp (argv[i],"-fakemap"))
  {
   fakemap = qtrue;
   _printf( "will generate fakemap.map\n");
  }
  else if (!strcmp(argv[i], "-samplesize"))
  {
   samplesize = atoi(argv[i+1]);
   if (samplesize < 1) samplesize = 1;
   i++;
   _printf("lightmap sample size is %dx%d units\n", samplesize, samplesize);
  }
  else if (argv[i][0] == '-')
   Error ("Unknown option \"%s\"", argv[i]);
  else
   break;
 }

 if (i != argc - 1)
  Error ("usage: q3map [options] mapfile");

 start = I_FloatTime ();

 ThreadSetDefault ();

 SetQdirFromPath (argv[i]);





 strcpy (source, ExpandArg (argv[i]));
 StripExtension (source);


 sprintf (path, "%s.prt", source);
 remove (path);
 sprintf (path, "%s.lin", source);
 remove (path);

 strcpy (name, ExpandArg (argv[i]));
 if ( strcmp(name + strlen(name) - 4, ".reg" ) ) {

  sprintf (path, "%s.reg", source);
  remove (path);

  DefaultExtension (name, ".map");
 }




 if ( onlyents ) {
  OnlyEnts();
  return 0;
 }




 if ( onlytextures ) {
  OnlyTextures();
  return 0;
 }




 LoadShaderInfo();


  if (strlen(tempsource) > 0) {
   LoadMapFile (tempsource);
  } else {
   LoadMapFile (name);
  }

 SetModelNumbers ();
 SetLightStyles ();

 ProcessModels ();

 EndBSPFile();

 end = I_FloatTime ();
 _printf ("%5.0f seconds elapsed\n", end-start);


  if (strlen(tempsource) > 0) {
    remove(tempsource);
  }

 return 0;
}

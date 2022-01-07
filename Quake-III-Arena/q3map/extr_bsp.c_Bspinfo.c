
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DefaultExtension (char*,char*) ;
 int LoadBSPFile (char*) ;
 int PrintBSPFileSizes () ;
 int Q_filelength (int *) ;
 int _printf (char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int strcpy (char*,char*) ;

void Bspinfo( int count, char **fileNames ) {
 int i;
 char source[1024];
 int size;
 FILE *f;

 if ( count < 1 ) {
  _printf( "No files to dump info for.\n");
  return;
 }

 for ( i = 0 ; i < count ; i++ ) {
  _printf ("---------------------\n");
  strcpy (source, fileNames[ i ] );
  DefaultExtension (source, ".bsp");
  f = fopen (source, "rb");
  if (f)
  {
   size = Q_filelength (f);
   fclose (f);
  }
  else
   size = 0;
  _printf ("%s: %i\n", source, size);

  LoadBSPFile (source);
  PrintBSPFileSizes ();
  _printf ("---------------------\n");
 }
}

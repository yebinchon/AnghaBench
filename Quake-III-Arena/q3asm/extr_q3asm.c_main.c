
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assemble () ;
 int Error (char*,...) ;
 double I_FloatTime () ;
 int InitTables () ;
 int ParseOptionFile (char*) ;
 int * asmFileNames ;
 int copystring (char*) ;
 size_t numAsmFiles ;
 int outputFilename ;
 int printf (char*,double) ;
 int strcmp (char*,char*) ;
 int strcpy (int ,char*) ;

int main( int argc, char **argv ) {
 int i;
 double start, end;



 if ( argc < 2 ) {
  Error( "usage: q3asm [-o output] <files> or q3asm -f <listfile>\n" );
 }

 start = I_FloatTime ();
 InitTables();


 strcpy( outputFilename, "q3asm" );
 numAsmFiles = 0;

 for ( i = 1 ; i < argc ; i++ ) {
  if ( argv[i][0] != '-' ) {
   break;
  }
  if ( !strcmp( argv[i], "-o" ) ) {
   if ( i == argc - 1 ) {
    Error( "-o must preceed a filename" );
   }
   strcpy( outputFilename, argv[ i+1 ] );
   i++;
   continue;
  }

  if ( !strcmp( argv[i], "-f" ) ) {
   if ( i == argc - 1 ) {
    Error( "-f must preceed a filename" );
   }
   ParseOptionFile( argv[ i+1 ] );
   i++;
   continue;
  }
  Error( "Unknown option: %s", argv[i] );
 }


 for ( ; i < argc ; i++ ) {
  asmFileNames[ numAsmFiles ] = copystring( argv[ i ] );
  numAsmFiles++;
 }

 Assemble();

 end = I_FloatTime ();
 printf ("%5.0f seconds elapsed\n", end-start);

 return 0;
}

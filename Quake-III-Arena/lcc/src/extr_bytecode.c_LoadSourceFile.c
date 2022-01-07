
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int filelength (int *) ;
 int * fopen (char const*,char*) ;
 int fread (scalar_t__*,int,int,int *) ;
 scalar_t__* malloc (int) ;
 int print (char*,char const*) ;
 scalar_t__* sourceFile ;
 int sourceLine ;
 scalar_t__* sourcePtr ;

__attribute__((used)) static void LoadSourceFile( const char *filename ) {
 FILE *f;
 int length;

 f = fopen( filename, "r" );
 if ( !f ) {
  print( ";couldn't open %s\n", filename );
  sourceFile = ((void*)0);
  return;
 }
 length = filelength( f );
 sourceFile = malloc( length + 1 );
 if ( sourceFile ) {
  fread( sourceFile, length, 1, f );
  sourceFile[length] = 0;
 }

 fclose( f );
 sourceLine = 1;
 sourcePtr = sourceFile;
}

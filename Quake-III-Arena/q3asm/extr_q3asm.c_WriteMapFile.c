
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int value; int * segment; struct TYPE_3__* next; } ;
typedef TYPE_1__ symbol_t ;
typedef int FILE ;


 int BSSSEG ;
 int CODESEG ;
 int MAX_OS_PATH ;
 int * SafeOpenWrite (char*) ;
 int StripExtension (char*) ;
 int fclose (int *) ;
 int fprintf (int *,char*,int,int,char*) ;
 int outputFilename ;
 int printf (char*,char*) ;
 int * segment ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 TYPE_1__* symbols ;

void WriteMapFile( void ) {
 FILE *f;
 symbol_t *s;
 char imageName[MAX_OS_PATH];
 int seg;

 strcpy( imageName, outputFilename );
 StripExtension( imageName );
 strcat( imageName, ".map" );

 printf( "Writing %s...\n", imageName );
 f = SafeOpenWrite( imageName );
 for ( seg = CODESEG ; seg <= BSSSEG ; seg++ ) {
  for ( s = symbols ; s ; s = s->next ) {
   if ( s->name[0] == '$' ) {
    continue;
   }
   if ( &segment[seg] != s->segment ) {
    continue;
   }
   fprintf( f, "%i %8x %s\n", seg, s->value, s->name );
  }
 }
 fclose( f );
}

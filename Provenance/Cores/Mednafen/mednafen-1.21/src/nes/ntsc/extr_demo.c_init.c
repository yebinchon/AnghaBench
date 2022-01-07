
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nes_ntsc_t ;
typedef int FILE ;


 int fatal_error (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (unsigned char*,long,scalar_t__,int *) ;
 scalar_t__ malloc (int) ;
 scalar_t__ nes_height ;
 int nes_ntsc_init (int *,int *) ;
 unsigned char* nes_pixels ;
 long nes_width ;
 int * ntsc ;
 int setup ;

__attribute__((used)) static void init()
{

 FILE* file = fopen( "nes.raw", "rb" );
 if ( !file )
  fatal_error( "Couldn't open image file" );
 nes_pixels = (unsigned char*) malloc( (long) nes_height * nes_width );
 if ( !nes_pixels )
  fatal_error( "Out of memory" );
 fread( nes_pixels, nes_width, nes_height, file );
 fclose( file );


 ntsc = (nes_ntsc_t*) malloc( sizeof (nes_ntsc_t) );
 if ( !ntsc )
  fatal_error( "Out of memory" );
 nes_ntsc_init( ntsc, &setup );
}

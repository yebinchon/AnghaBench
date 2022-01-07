
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* palette_out; } ;
typedef int FILE ;


 int * fopen (char*,char*) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int nes_ntsc_init (int ,TYPE_1__*) ;
 TYPE_1__ setup ;

__attribute__((used)) static void write_palette()
{
 FILE* out = fopen( "nes.pal", "wb" );
 if ( out )
 {
  unsigned char palette [64 * 3];
  setup.palette_out = palette;
  nes_ntsc_init( 0, &setup );
  fwrite( palette, sizeof palette, 1, out );
 }
}

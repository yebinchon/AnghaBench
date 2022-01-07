
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float sharpness; float hue_warping; int merge_fields; float* decoder_matrix; scalar_t__ hue; } ;
 int display () ;
 int free (int ) ;
 int init () ;
 int key_pressed ;
 scalar_t__ mouse_moved ;
 int mouse_x ;
 int mouse_y ;
 TYPE_1__ nes_ntsc_composite ;
 int nes_ntsc_init (int ,TYPE_1__*) ;
 TYPE_1__ nes_ntsc_monochrome ;
 TYPE_1__ nes_ntsc_rgb ;
 TYPE_1__ nes_ntsc_svideo ;
 int ntsc ;
 int out_height ;
 int out_width ;
 int sdl_init (int ,int ,int) ;
 scalar_t__ sdl_run () ;
 TYPE_1__ setup ;
 int write_palette () ;

int main( int argc, char** argv )
{
 int merge_fields = 1;
 int sony_decoder = 0;

 setup = nes_ntsc_composite;
 init();
 sdl_init( out_width, out_height, 16 );


 while ( sdl_run() )
 {
  display();

  switch ( key_pressed )
  {
   case 133: merge_fields = !merge_fields; break;

   case 132 : setup = nes_ntsc_composite; break;

   case 128 : setup = nes_ntsc_svideo; break;

   case 129 : setup = nes_ntsc_rgb; break;

   case 130 : setup = nes_ntsc_monochrome; break;

   case 131 : sony_decoder = !sony_decoder; break;
  }

  if ( key_pressed || mouse_moved )
  {

   float x = mouse_x * 2 - 1;
   float y = mouse_y * 2 - 1;



   setup.sharpness = x;
   setup.hue_warping = y;

   setup.merge_fields = merge_fields;

   setup.decoder_matrix = 0;
   setup.hue = 0;
   if ( sony_decoder )
   {

    static float matrix [6] = { 1.539, -0.622, -0.571, -0.185, 0.000, 2.000 };
    setup.decoder_matrix = matrix;
    setup.hue += 33 / 180.0;
   }

   nes_ntsc_init( ntsc, &setup );
  }
 }

 free( ntsc );

 write_palette();

 return 0;
}

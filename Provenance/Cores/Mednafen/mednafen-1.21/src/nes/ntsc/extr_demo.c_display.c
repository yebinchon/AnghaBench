
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ merge_fields; } ;


 int burst_phase ;
 int nes_height ;
 int nes_ntsc_blit (int ,int ,int ,int,int ,int ,unsigned char*,int) ;
 int nes_pixels ;
 int nes_width ;
 int ntsc ;
 int out_height ;
 int out_width ;
 int sdl_display () ;
 int sdl_lock_pixels () ;
 int sdl_pitch ;
 unsigned char* sdl_pixels ;
 TYPE_1__ setup ;

__attribute__((used)) static void display()
{
 sdl_lock_pixels();


 burst_phase ^= 1;
 if ( setup.merge_fields )
  burst_phase = 0;


 nes_ntsc_blit( ntsc, nes_pixels, nes_width, burst_phase,
   nes_width, nes_height, sdl_pixels, sdl_pitch * 2 );


 {
  int y;
  for ( y = 1; y < out_height - 1; y += 2 )
  {
   unsigned char* io = sdl_pixels + y * sdl_pitch;
   int n;
   for ( n = out_width; n; --n )
   {
    unsigned prev = *(unsigned short*) (io - sdl_pitch);
    unsigned next = *(unsigned short*) (io + sdl_pitch);

    unsigned mixed = prev + next + ((prev ^ next) & 0x0821);

    *(unsigned short*) io = (mixed >> 1) - (mixed >> 4 & 0x18E3);
    io += 2;
   }
  }
 }

 sdl_display();
}

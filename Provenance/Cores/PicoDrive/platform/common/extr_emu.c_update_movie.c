
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_count; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ Pico ;
 int* PicoPad ;
 int emu_status_msg (char*) ;
 int free (int*) ;
 int lprintf (char*) ;
 int* movie_data ;
 int movie_size ;

__attribute__((used)) static void update_movie(void)
{
 int offs = Pico.m.frame_count*3 + 0x40;
 if (offs+3 > movie_size) {
  free(movie_data);
  movie_data = 0;
  emu_status_msg("END OF MOVIE.");
  lprintf("END OF MOVIE.\n");
 } else {

  PicoPad[0] = ~movie_data[offs] & 0x8f;
  if(!(movie_data[offs] & 0x10)) PicoPad[0] |= 0x40;
  if(!(movie_data[offs] & 0x20)) PicoPad[0] |= 0x10;
  if(!(movie_data[offs] & 0x40)) PicoPad[0] |= 0x20;
  PicoPad[1] = ~movie_data[offs+1] & 0x8f;
  if(!(movie_data[offs+1] & 0x10)) PicoPad[1] |= 0x40;
  if(!(movie_data[offs+1] & 0x20)) PicoPad[1] |= 0x10;
  if(!(movie_data[offs+1] & 0x40)) PicoPad[1] |= 0x20;
  PicoPad[0] |= (~movie_data[offs+2] & 0x0A) << 8;
  if(!(movie_data[offs+2] & 0x01)) PicoPad[0] |= 0x0400;
  if(!(movie_data[offs+2] & 0x04)) PicoPad[0] |= 0x0100;
  PicoPad[1] |= (~movie_data[offs+2] & 0xA0) << 4;
  if(!(movie_data[offs+2] & 0x10)) PicoPad[1] |= 0x0400;
  if(!(movie_data[offs+2] & 0x40)) PicoPad[1] |= 0x0100;
 }
}

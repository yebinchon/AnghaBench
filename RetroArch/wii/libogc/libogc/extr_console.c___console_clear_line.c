
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int con_xres; int background; scalar_t__ destbuffer; } ;
typedef TYPE_1__ console_data_s ;


 int FONT_XSIZE ;
 unsigned int FONT_YSIZE ;
 TYPE_1__* curr_con ;

__attribute__((used)) static void __console_clear_line( int line, int from, int to ) {
 console_data_s *con;
 unsigned int c;
 unsigned int *p;
 unsigned int x_pixels;
 unsigned int px_per_col = FONT_XSIZE/2;
 unsigned int line_height = FONT_YSIZE;
 unsigned int line_width;

 if( !(con = curr_con) ) return;

  x_pixels = con->con_xres / 2;

 line_width = (to - from)*px_per_col;
 p = (unsigned int*)con->destbuffer;


 p += line*(FONT_YSIZE*x_pixels) + from*px_per_col;


  while( line_height-- ) {
   c = line_width;
    while( c-- )
      *p++ = con->background;
    p -= line_width;
    p += x_pixels;
  }
}

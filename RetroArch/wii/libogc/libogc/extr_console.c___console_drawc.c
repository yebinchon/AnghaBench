
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int con_stride; int cursor_row; int cursor_col; unsigned char* font; unsigned int foreground; unsigned int background; scalar_t__ destbuffer; } ;
typedef TYPE_1__ console_data_s ;


 int FONT_XSIZE ;
 int FONT_YSIZE ;
 scalar_t__ TRUE ;
 TYPE_1__* curr_con ;
 scalar_t__ do_xfb_copy ;

__attribute__((used)) static void __console_drawc(int c)
{
 console_data_s *con;
 int ay;
 unsigned int *ptr;
 unsigned char *pbits;
 unsigned char bits;
 unsigned int color;
 unsigned int fgcolor, bgcolor;
 unsigned int nextline;

 if(do_xfb_copy==TRUE) return;
 if(!curr_con) return;
 con = curr_con;

 ptr = (unsigned int*)(con->destbuffer + ( con->con_stride * con->cursor_row * FONT_YSIZE ) + ((con->cursor_col * FONT_XSIZE / 2) * 4));
 pbits = &con->font[c * FONT_YSIZE];
 nextline = con->con_stride/4 - 4;
 fgcolor = con->foreground;
 bgcolor = con->background;

 for (ay = 0; ay < FONT_YSIZE; ay++)
 {
 }
}

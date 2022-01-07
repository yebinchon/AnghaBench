
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int con_xres; int con_yres; int con_cols; int con_rows; int con_stride; int tgt_stride; int target_x; int target_y; int background; int foreground; int font; void* destbuffer; } ;
typedef TYPE_1__ console_data_s ;


 int COLOR_BLACK ;
 int COLOR_WHITE ;
 int FONT_XSIZE ;
 int FONT_YSIZE ;
 size_t STD_ERR ;
 size_t STD_OUT ;
 int _CPU_ISR_Disable (unsigned int) ;
 int _CPU_ISR_Restore (unsigned int) ;
 int _IONBF ;
 int __console_clear () ;
 int console_font_8x16 ;
 TYPE_1__* curr_con ;
 int ** devoptab_list ;
 int dotab_stdout ;
 int setvbuf (int ,int *,int ,int ) ;
 TYPE_1__ stdcon ;
 int stderr ;
 int stdout ;

void __console_init(void *framebuffer,int xstart,int ystart,int xres,int yres,int stride)
{
 unsigned int level;
 console_data_s *con = &stdcon;

 _CPU_ISR_Disable(level);

 con->destbuffer = framebuffer;
 con->con_xres = xres;
 con->con_yres = yres;
 con->con_cols = xres / FONT_XSIZE;
 con->con_rows = yres / FONT_YSIZE;
 con->con_stride = con->tgt_stride = stride;
 con->target_x = xstart;
 con->target_y = ystart;

 con->font = console_font_8x16;

 con->foreground = COLOR_WHITE;
 con->background = COLOR_BLACK;

 curr_con = con;

 __console_clear();

 devoptab_list[STD_OUT] = &dotab_stdout;
 devoptab_list[STD_ERR] = &dotab_stdout;
 _CPU_ISR_Restore(level);

 setvbuf(stdout, ((void*)0) , _IONBF, 0);
 setvbuf(stderr, ((void*)0) , _IONBF, 0);
}

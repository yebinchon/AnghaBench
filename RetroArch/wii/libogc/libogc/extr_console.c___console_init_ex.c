
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int target_x; int target_y; int con_xres; int con_yres; int tgt_stride; int con_stride; int con_cols; int con_rows; int background; int foreground; int font; scalar_t__ saved_col; scalar_t__ saved_row; scalar_t__ cursor_col; scalar_t__ cursor_row; void* destbuffer; } ;
typedef TYPE_1__ console_data_s ;


 int COLOR_BLACK ;
 int COLOR_WHITE ;
 int FONT_XSIZE ;
 int FONT_YSIZE ;
 size_t STD_ERR ;
 size_t STD_OUT ;
 int VIDEO_SetPostRetraceCallback (int ) ;
 int _CPU_ISR_Disable (unsigned int) ;
 int _CPU_ISR_Restore (unsigned int) ;
 int _IONBF ;
 int __console_clear () ;
 int __console_vipostcb ;
 int console_font_8x16 ;
 TYPE_1__* curr_con ;
 int ** devoptab_list ;
 int dotab_stdout ;
 int setvbuf (int ,int *,int ,int ) ;
 TYPE_1__ stdcon ;
 int stderr ;
 int stdout ;

void __console_init_ex(void *conbuffer,int tgt_xstart,int tgt_ystart,int tgt_stride,int con_xres,int con_yres,int con_stride)
{
 unsigned int level;
 console_data_s *con = &stdcon;

 _CPU_ISR_Disable(level);

 con->destbuffer = conbuffer;
 con->target_x = tgt_xstart;
 con->target_y = tgt_ystart;
 con->con_xres = con_xres;
 con->con_yres = con_yres;
 con->tgt_stride = tgt_stride;
 con->con_stride = con_stride;
 con->con_cols = con_xres / FONT_XSIZE;
 con->con_rows = con_yres / FONT_YSIZE;
 con->cursor_row = 0;
 con->cursor_col = 0;
 con->saved_row = 0;
 con->saved_col = 0;

 con->font = console_font_8x16;

 con->foreground = COLOR_WHITE;
 con->background = COLOR_BLACK;

 curr_con = con;

 __console_clear();

 devoptab_list[STD_OUT] = &dotab_stdout;
 devoptab_list[STD_ERR] = &dotab_stdout;

 VIDEO_SetPostRetraceCallback(__console_vipostcb);

 _CPU_ISR_Restore(level);

 setvbuf(stdout, ((void*)0) , _IONBF, 0);
 setvbuf(stderr, ((void*)0) , _IONBF, 0);
}

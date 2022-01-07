
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {scalar_t__ new_channel; int rollup_cr; TYPE_1__* data608; int last_scr_sequence; int last_pts; } ;
struct eia608_screen {char** characters; int dirty; } ;
typedef enum command_code { ____Placeholder_command_code } command_code ;
struct TYPE_2__ {scalar_t__ channel; size_t cursor_column; size_t cursor_row; int rollup_base_row; void* font; void* color; int mode; int screenfuls_counter; int current_visible_scr_sequence; int current_visible_start_ms; } ;
 int COM_UNKNOWN ;
 void* FONT_REGULAR ;
 int MODE_POPUP ;
 int MODE_ROLLUP_2 ;
 int MODE_ROLLUP_3 ;
 int MODE_ROLLUP_4 ;
 int MODE_TEXT ;
 scalar_t__ cc_channel ;
 int * command_type ;
 scalar_t__ debug_608 ;
 void* default_color ;
 int erase_memory (struct s_write*,int) ;
 struct eia608_screen* get_current_visible_buffer (struct s_write*) ;
 struct eia608_screen* get_writing_buffer (struct s_write*) ;
 int hb_log (char*,...) ;
 int is_current_row_empty (struct s_write*) ;
 int move_roll_up (struct s_write*,int) ;
 int roll_up (struct s_write*) ;
 int swap_visible_buffer (struct s_write*) ;
 int write_cc_buffer (struct s_write*) ;

__attribute__((used)) static void handle_command(unsigned char c1, const unsigned char c2,
                           struct s_write *wb)
{

    wb->data608->channel=wb->new_channel;
    if (wb->data608->channel!=cc_channel)
        return;

    enum command_code command = COM_UNKNOWN;
    if (c1==0x15)
        c1=0x14;
    if ((c1==0x14 || c1==0x1C) && c2==0x2C)
        command = 137;
    if ((c1==0x14 || c1==0x1C) && c2==0x20)
        command = 135;
    if ((c1==0x14 || c1==0x1C) && c2==0x2F)
        command = 138;
    if ((c1==0x17 || c1==0x1F) && c2==0x21)
        command = 130;
    if ((c1==0x17 || c1==0x1F) && c2==0x22)
        command = 129;
    if ((c1==0x17 || c1==0x1F) && c2==0x23)
        command = 128;
    if ((c1==0x14 || c1==0x1C) && c2==0x25)
        command = 133;
    if ((c1==0x14 || c1==0x1C) && c2==0x26)
        command = 132;
    if ((c1==0x14 || c1==0x1C) && c2==0x27)
        command = 131;
    if ((c1==0x14 || c1==0x1C) && c2==0x2D)
        command = 139;
    if ((c1==0x14 || c1==0x1C) && c2==0x2E)
        command = 136;
    if ((c1==0x14 || c1==0x1C) && c2==0x21)
        command = 140;
    if ((c1==0x14 || c1==0x1C) && c2==0x2b)
        command = 134;
    if (debug_608)
    {
        hb_log ("\rCommand: %02X %02X (%s)\n",c1,c2,command_type[command]);
    }
    switch (command)
    {
        case 140:
            if (wb->data608->cursor_column>0)
            {
                struct eia608_screen *data;
                data = get_writing_buffer(wb);
                if (data != ((void*)0))
                {
                    wb->data608->cursor_column--;
                    data->characters[wb->data608->cursor_row][wb->data608->cursor_column] = ' ';
                    data->dirty = 1;
                }
            }
            break;
        case 130:
            if (wb->data608->cursor_column<31)
                wb->data608->cursor_column++;
            break;
        case 129:
            wb->data608->cursor_column+=2;
            if (wb->data608->cursor_column>31)
                wb->data608->cursor_column=31;
            break;
        case 128:
            wb->data608->cursor_column+=3;
            if (wb->data608->cursor_column>31)
                wb->data608->cursor_column=31;
            break;
        case 135:
            wb->data608->mode=MODE_POPUP;
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            break;
        case 134:
            wb->data608->mode=MODE_TEXT;
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            break;
        case 133:
            if (wb->data608->rollup_base_row + 1 < 2)
            {
                move_roll_up(wb, 1);
                wb->data608->rollup_base_row = 1;
            }
            if (wb->data608->mode==MODE_POPUP)
            {
                swap_visible_buffer(wb);
                if (write_cc_buffer(wb))
                    wb->data608->screenfuls_counter++;
                erase_memory (wb, 1);
            }
            wb->data608->color=default_color;
            wb->data608->font=FONT_REGULAR;
            if (wb->data608->mode==MODE_ROLLUP_2 && !is_current_row_empty(wb))
            {
                if (debug_608)
                    hb_log ("Two RU2, current line not empty. Simulating a CR\n");
                handle_command(0x14, 0x2D, wb);
                wb->rollup_cr = 1;
            }
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            wb->data608->mode=MODE_ROLLUP_2;
            erase_memory (wb, 0);
            wb->data608->cursor_column = 0;
            wb->data608->cursor_row = wb->data608->rollup_base_row;
            break;
        case 132:
            if (wb->data608->rollup_base_row + 1 < 3)
            {
                move_roll_up(wb, 2);
                wb->data608->rollup_base_row = 2;
            }
            if (wb->data608->mode==MODE_POPUP)
            {
                if (write_cc_buffer(wb))
                    wb->data608->screenfuls_counter++;
                erase_memory (wb, 1);
            }
            wb->data608->color=default_color;
            wb->data608->font=FONT_REGULAR;
            if (wb->data608->mode==MODE_ROLLUP_3 && !is_current_row_empty(wb))
            {
                if (debug_608)
                    hb_log ("Two RU3, current line not empty. Simulating a CR\n");
                handle_command(0x14, 0x2D, wb);
                wb->rollup_cr = 1;
            }
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            wb->data608->mode=MODE_ROLLUP_3;
            erase_memory (wb, 0);
            wb->data608->cursor_column = 0;
            wb->data608->cursor_row = wb->data608->rollup_base_row;
            break;
        case 131:
            if (wb->data608->rollup_base_row + 1 < 4)
            {
                move_roll_up(wb, 3);
                wb->data608->rollup_base_row = 3;
            }
            if (wb->data608->mode==MODE_POPUP)
            {
                if (write_cc_buffer(wb))
                    wb->data608->screenfuls_counter++;
                erase_memory (wb, 1);
            }
            wb->data608->color=default_color;
            wb->data608->font=FONT_REGULAR;
            if (wb->data608->mode==MODE_ROLLUP_4 && !is_current_row_empty(wb))
            {
                if (debug_608)
                    hb_log ("Two RU4, current line not empty. Simulating a CR\n");
                handle_command(0x14, 0x2D, wb);
                wb->rollup_cr = 1;
            }
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            wb->data608->mode = MODE_ROLLUP_4;
            wb->data608->cursor_column = 0;
            wb->data608->cursor_row = wb->data608->rollup_base_row;
            erase_memory (wb, 0);
            break;
        case 139:




            if (wb->rollup_cr && is_current_row_empty(wb))
            {
                wb->rollup_cr = 0;
                wb->data608->current_visible_start_ms = wb->last_pts;
                wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
                break;
            }
            if (write_cc_buffer(wb))
                wb->data608->screenfuls_counter++;
            roll_up(wb);
            wb->data608->cursor_column = 0;
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            break;
        case 136:
            erase_memory (wb,0);
            break;
        case 137:


            if (wb->data608->mode == MODE_ROLLUP_2 ||
                wb->data608->mode == MODE_ROLLUP_3 ||
                wb->data608->mode == MODE_ROLLUP_4)
            {
                write_cc_buffer(wb);
            }
            erase_memory (wb,1);



            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;


            struct eia608_screen *data;
            data = get_current_visible_buffer(wb);
            data->dirty = 1;
            write_cc_buffer(wb);
            break;
        case 138:


            if (wb->data608->mode == MODE_POPUP)
            {
                swap_visible_buffer(wb);
                wb->data608->current_visible_start_ms = wb->last_pts;
                wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            }
            if (write_cc_buffer(wb))
                wb->data608->screenfuls_counter++;

            if (wb->data608->mode != MODE_POPUP)
                swap_visible_buffer(wb);
            wb->data608->cursor_column = 0;
            wb->data608->cursor_row = 0;
            wb->data608->color=default_color;
            wb->data608->font=FONT_REGULAR;
            break;
        default:
            if (debug_608)
            {
                hb_log ("\rNot yet implemented.\n");
            }
            break;
    }
}

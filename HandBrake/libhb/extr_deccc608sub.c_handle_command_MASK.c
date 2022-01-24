#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s_write {scalar_t__ new_channel; int rollup_cr; TYPE_1__* data608; int /*<<< orphan*/  last_scr_sequence; int /*<<< orphan*/  last_pts; } ;
struct eia608_screen {char** characters; int dirty; } ;
typedef  enum command_code { ____Placeholder_command_code } command_code ;
struct TYPE_2__ {scalar_t__ channel; size_t cursor_column; size_t cursor_row; int rollup_base_row; void* font; void* color; int /*<<< orphan*/  mode; int /*<<< orphan*/  screenfuls_counter; int /*<<< orphan*/  current_visible_scr_sequence; int /*<<< orphan*/  current_visible_start_ms; } ;

/* Variables and functions */
#define  COM_BACKSPACE 140 
#define  COM_CARRIAGERETURN 139 
#define  COM_ENDOFCAPTION 138 
#define  COM_ERASEDISPLAYEDMEMORY 137 
#define  COM_ERASENONDISPLAYEDMEMORY 136 
#define  COM_RESUMECAPTIONLOADING 135 
#define  COM_RESUMETEXTDISPLAY 134 
#define  COM_ROLLUP2 133 
#define  COM_ROLLUP3 132 
#define  COM_ROLLUP4 131 
#define  COM_TABOFFSET1 130 
#define  COM_TABOFFSET2 129 
#define  COM_TABOFFSET3 128 
 int COM_UNKNOWN ; 
 void* FONT_REGULAR ; 
 int /*<<< orphan*/  MODE_POPUP ; 
 int /*<<< orphan*/  MODE_ROLLUP_2 ; 
 int /*<<< orphan*/  MODE_ROLLUP_3 ; 
 int /*<<< orphan*/  MODE_ROLLUP_4 ; 
 int /*<<< orphan*/  MODE_TEXT ; 
 scalar_t__ cc_channel ; 
 int /*<<< orphan*/ * command_type ; 
 scalar_t__ debug_608 ; 
 void* default_color ; 
 int /*<<< orphan*/  FUNC0 (struct s_write*,int) ; 
 struct eia608_screen* FUNC1 (struct s_write*) ; 
 struct eia608_screen* FUNC2 (struct s_write*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct s_write*) ; 
 int /*<<< orphan*/  FUNC5 (struct s_write*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct s_write*) ; 
 int /*<<< orphan*/  FUNC7 (struct s_write*) ; 
 int /*<<< orphan*/  FUNC8 (struct s_write*) ; 

__attribute__((used)) static void FUNC9(unsigned char c1, const unsigned char c2,
                           struct s_write *wb)
{
    // Handle channel change
    wb->data608->channel=wb->new_channel;
    if (wb->data608->channel!=cc_channel)
        return;

    enum command_code command = COM_UNKNOWN;
    if (c1==0x15)
        c1=0x14;
    if ((c1==0x14 || c1==0x1C) && c2==0x2C)
        command = COM_ERASEDISPLAYEDMEMORY;
    if ((c1==0x14 || c1==0x1C) && c2==0x20)
        command = COM_RESUMECAPTIONLOADING;
    if ((c1==0x14 || c1==0x1C) && c2==0x2F)
        command = COM_ENDOFCAPTION;
    if ((c1==0x17 || c1==0x1F) && c2==0x21)
        command = COM_TABOFFSET1;
    if ((c1==0x17 || c1==0x1F) && c2==0x22)
        command = COM_TABOFFSET2;
    if ((c1==0x17 || c1==0x1F) && c2==0x23)
        command = COM_TABOFFSET3;
    if ((c1==0x14 || c1==0x1C) && c2==0x25)
        command = COM_ROLLUP2;
    if ((c1==0x14 || c1==0x1C) && c2==0x26)
        command = COM_ROLLUP3;
    if ((c1==0x14 || c1==0x1C) && c2==0x27)
        command = COM_ROLLUP4;
    if ((c1==0x14 || c1==0x1C) && c2==0x2D)
        command = COM_CARRIAGERETURN;
    if ((c1==0x14 || c1==0x1C) && c2==0x2E)
        command = COM_ERASENONDISPLAYEDMEMORY;
    if ((c1==0x14 || c1==0x1C) && c2==0x21)
        command = COM_BACKSPACE;
    if ((c1==0x14 || c1==0x1C) && c2==0x2b)
        command = COM_RESUMETEXTDISPLAY;
    if (debug_608)
    {
        FUNC3 ("\rCommand: %02X %02X (%s)\n",c1,c2,command_type[command]);
    }
    switch (command)
    {
        case COM_BACKSPACE:
            if (wb->data608->cursor_column>0)
            {
                struct eia608_screen *data;
                data = FUNC2(wb);
                if (data != NULL)
                {
                    wb->data608->cursor_column--;
                    data->characters[wb->data608->cursor_row][wb->data608->cursor_column] = ' ';
                    data->dirty = 1;
                }
            }
            break;
        case COM_TABOFFSET1:
            if (wb->data608->cursor_column<31)
                wb->data608->cursor_column++;
            break;
        case COM_TABOFFSET2:
            wb->data608->cursor_column+=2;
            if (wb->data608->cursor_column>31)
                wb->data608->cursor_column=31;
            break;
        case COM_TABOFFSET3:
            wb->data608->cursor_column+=3;
            if (wb->data608->cursor_column>31)
                wb->data608->cursor_column=31;
            break;
        case COM_RESUMECAPTIONLOADING:
            wb->data608->mode=MODE_POPUP;
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            break;
        case COM_RESUMETEXTDISPLAY:
            wb->data608->mode=MODE_TEXT;
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            break;
        case COM_ROLLUP2:
            if (wb->data608->rollup_base_row + 1 < 2)
            {
                FUNC5(wb, 1);
                wb->data608->rollup_base_row = 1;
            }
            if (wb->data608->mode==MODE_POPUP)
            {
                FUNC7(wb);
                if (FUNC8(wb))
                    wb->data608->screenfuls_counter++;
                FUNC0 (wb, 1);
            }
            wb->data608->color=default_color;
            wb->data608->font=FONT_REGULAR;
            if (wb->data608->mode==MODE_ROLLUP_2 && !FUNC4(wb))
            {
                if (debug_608)
                    FUNC3 ("Two RU2, current line not empty. Simulating a CR\n");
                FUNC9(0x14, 0x2D, wb);
                wb->rollup_cr = 1;
            }
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            wb->data608->mode=MODE_ROLLUP_2;
            FUNC0 (wb, 0);
            wb->data608->cursor_column = 0;
            wb->data608->cursor_row = wb->data608->rollup_base_row;
            break;
        case COM_ROLLUP3:
            if (wb->data608->rollup_base_row + 1 < 3)
            {
                FUNC5(wb, 2);
                wb->data608->rollup_base_row = 2;
            }
            if (wb->data608->mode==MODE_POPUP)
            {
                if (FUNC8(wb))
                    wb->data608->screenfuls_counter++;
                FUNC0 (wb, 1);
            }
            wb->data608->color=default_color;
            wb->data608->font=FONT_REGULAR;
            if (wb->data608->mode==MODE_ROLLUP_3 && !FUNC4(wb))
            {
                if (debug_608)
                    FUNC3 ("Two RU3, current line not empty. Simulating a CR\n");
                FUNC9(0x14, 0x2D, wb);
                wb->rollup_cr = 1;
            }
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            wb->data608->mode=MODE_ROLLUP_3;
            FUNC0 (wb, 0);
            wb->data608->cursor_column = 0;
            wb->data608->cursor_row = wb->data608->rollup_base_row;
            break;
        case COM_ROLLUP4:
            if (wb->data608->rollup_base_row + 1 < 4)
            {
                FUNC5(wb, 3);
                wb->data608->rollup_base_row = 3;
            }
            if (wb->data608->mode==MODE_POPUP)
            {
                if (FUNC8(wb))
                    wb->data608->screenfuls_counter++;
                FUNC0 (wb, 1);
            }
            wb->data608->color=default_color;
            wb->data608->font=FONT_REGULAR;
            if (wb->data608->mode==MODE_ROLLUP_4 && !FUNC4(wb))
            {
                if (debug_608)
                    FUNC3 ("Two RU4, current line not empty. Simulating a CR\n");
                FUNC9(0x14, 0x2D, wb);
                wb->rollup_cr = 1;
            }
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            wb->data608->mode = MODE_ROLLUP_4;
            wb->data608->cursor_column = 0;
            wb->data608->cursor_row = wb->data608->rollup_base_row;
            FUNC0 (wb, 0);
            break;
        case COM_CARRIAGERETURN:
            // In transcript mode, CR doesn't write the whole screen, to avoid
            // repeated lines.

            // Skip initial CR if rollup has already done it
            if (wb->rollup_cr && FUNC4(wb))
            {
                wb->rollup_cr = 0;
                wb->data608->current_visible_start_ms = wb->last_pts;
                wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
                break;
            }
            if (FUNC8(wb))
                wb->data608->screenfuls_counter++;
            FUNC6(wb);
            wb->data608->cursor_column = 0;
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            break;
        case COM_ERASENONDISPLAYEDMEMORY:
            FUNC0 (wb,0);
            break;
        case COM_ERASEDISPLAYEDMEMORY:
            // There may be "displayed" rollup data that has not been
            // written to a buffer yet.
            if (wb->data608->mode == MODE_ROLLUP_2 ||
                wb->data608->mode == MODE_ROLLUP_3 ||
                wb->data608->mode == MODE_ROLLUP_4)
            {
                FUNC8(wb);
            }
            FUNC0 (wb,1);

            // the last pts is the time to remove the previously
            // displayed CC from the display
            wb->data608->current_visible_start_ms = wb->last_pts;
            wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;

            // Write "clear" subtitle if necessary
            struct eia608_screen *data;
            data = FUNC1(wb);
            data->dirty = 1;
            FUNC8(wb);
            break;
        case COM_ENDOFCAPTION: // Switch buffers
            // The currently *visible* buffer is leaving, so now we know it's ending
            // time. Time to actually write it to file.
            if (wb->data608->mode == MODE_POPUP)
            {
                FUNC7(wb);
                wb->data608->current_visible_start_ms = wb->last_pts;
                wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            }
            if (FUNC8(wb))
                wb->data608->screenfuls_counter++;

            if (wb->data608->mode != MODE_POPUP)
                FUNC7(wb);
            wb->data608->cursor_column = 0;
            wb->data608->cursor_row = 0;
            wb->data608->color=default_color;
            wb->data608->font=FONT_REGULAR;
            break;
        default:
            if (debug_608)
            {
                FUNC3 ("\rNot yet implemented.\n");
            }
            break;
    }
}
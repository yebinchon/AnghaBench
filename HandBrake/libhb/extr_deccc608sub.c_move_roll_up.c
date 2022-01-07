
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct eia608_screen {int dirty; scalar_t__* row_used; scalar_t__** characters; scalar_t__** fonts; scalar_t__** colors; } ;
struct TYPE_2__ {int mode; int rollup_base_row; } ;


 int CC608_SCREEN_WIDTH ;
 char COL_WHITE ;
 char FONT_REGULAR ;



 struct eia608_screen* get_current_visible_buffer (struct s_write*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,char,int) ;

__attribute__((used)) static void move_roll_up(struct s_write *wb, int row)
{
    struct eia608_screen *use_buffer;
    int ii, src, dst, keep_lines;

    switch (wb->data608->mode)
    {
        case 130:
            keep_lines = 2;
            break;
        case 129:
            keep_lines = 3;
            break;
        case 128:
            keep_lines = 4;
            break;
        default:

            return;
    }

    if (row == wb->data608->rollup_base_row)
    {

        return;
    }

    use_buffer = get_current_visible_buffer(wb);
    if (row < wb->data608->rollup_base_row)
    {
        src = wb->data608->rollup_base_row - keep_lines + 1;
        dst = row - keep_lines + 1;
        for (ii = 0; ii < keep_lines; ii++)
        {
            memcpy(use_buffer->characters[dst], use_buffer->characters[src], CC608_SCREEN_WIDTH+1);
            memcpy(use_buffer->colors[dst], use_buffer->colors[src], CC608_SCREEN_WIDTH+1);
            memcpy(use_buffer->fonts[dst], use_buffer->fonts[src], CC608_SCREEN_WIDTH+1);
            use_buffer->row_used[dst] = use_buffer->row_used[src];

            memset(use_buffer->characters[src], ' ', CC608_SCREEN_WIDTH);
            memset(use_buffer->colors[src], COL_WHITE, CC608_SCREEN_WIDTH);
            memset(use_buffer->fonts[src], FONT_REGULAR, CC608_SCREEN_WIDTH);
            use_buffer->characters[src][CC608_SCREEN_WIDTH] = 0;
            use_buffer->row_used[src] = 0;

            src++;
            dst++;
        }
    }
    else
    {
        src = wb->data608->rollup_base_row;
        dst = row;
        for (ii = 0; ii < keep_lines; ii++)
        {
            memcpy(use_buffer->characters[dst], use_buffer->characters[src], CC608_SCREEN_WIDTH+1);
            memcpy(use_buffer->colors[dst], use_buffer->colors[src], CC608_SCREEN_WIDTH+1);
            memcpy(use_buffer->fonts[dst], use_buffer->fonts[src], CC608_SCREEN_WIDTH+1);
            use_buffer->row_used[dst] = use_buffer->row_used[src];

            memset(use_buffer->characters[src], ' ', CC608_SCREEN_WIDTH);
            memset(use_buffer->colors[src], COL_WHITE, CC608_SCREEN_WIDTH);
            memset(use_buffer->fonts[src], FONT_REGULAR, CC608_SCREEN_WIDTH);
            use_buffer->characters[src][CC608_SCREEN_WIDTH] = 0;
            use_buffer->row_used[src] = 0;

            src--;
            dst--;
        }
    }
    use_buffer->dirty = 1;
}

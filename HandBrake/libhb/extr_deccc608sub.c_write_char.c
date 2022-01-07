
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct eia608_screen {unsigned char** characters; int* row_used; int dirty; scalar_t__ empty; int ** fonts; int ** colors; } ;
struct TYPE_2__ {scalar_t__ mode; size_t cursor_row; size_t cursor_column; int font; int color; } ;


 scalar_t__ MODE_TEXT ;
 struct eia608_screen* get_writing_buffer (struct s_write*) ;

__attribute__((used)) static void write_char(const unsigned char c, struct s_write *wb)
{
    if (wb->data608->mode != MODE_TEXT)
    {
        struct eia608_screen * use_buffer = get_writing_buffer(wb);
        if (use_buffer != ((void*)0))
        {



            use_buffer->characters[wb->data608->cursor_row][wb->data608->cursor_column] = c;
            use_buffer->colors[wb->data608->cursor_row][wb->data608->cursor_column] = wb->data608->color;
            use_buffer->fonts[wb->data608->cursor_row][wb->data608->cursor_column] = wb->data608->font;
            use_buffer->row_used[wb->data608->cursor_row] = 1;
            use_buffer->empty = 0;
            if (wb->data608->cursor_column < 31)
                wb->data608->cursor_column++;
            use_buffer->dirty = 1;
        }
    }

}

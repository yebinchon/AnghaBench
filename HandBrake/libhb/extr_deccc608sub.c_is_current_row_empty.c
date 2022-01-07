
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct eia608_screen {char** characters; } ;
struct TYPE_2__ {size_t rollup_base_row; } ;


 int CC608_SCREEN_WIDTH ;
 struct eia608_screen* get_current_visible_buffer (struct s_write*) ;

__attribute__((used)) static int is_current_row_empty (struct s_write *wb)
{
    struct eia608_screen *use_buffer;
    int i;

    use_buffer = get_current_visible_buffer(wb);
    for (i=0;i<CC608_SCREEN_WIDTH;i++)
    {
        if (use_buffer->characters[wb->data608->rollup_base_row][i]!=' ')
            return 0;
    }
    return 1;
}

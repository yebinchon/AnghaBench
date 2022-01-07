
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_write {int dummy; } ;
struct eia608_screen {int dummy; } ;


 int clear_eia608_cc_buffer (struct eia608_screen*) ;
 struct eia608_screen* get_current_hidden_buffer (struct s_write*) ;
 struct eia608_screen* get_current_visible_buffer (struct s_write*) ;

void erase_memory (struct s_write *wb, int displayed)
{
    struct eia608_screen *buf;
    if (displayed)
    {
        buf = get_current_visible_buffer(wb);
    }
    else
    {
        buf = get_current_hidden_buffer(wb);
    }
    clear_eia608_cc_buffer (buf);
}

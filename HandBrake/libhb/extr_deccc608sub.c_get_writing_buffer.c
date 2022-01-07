
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct eia608_screen {int dummy; } ;
struct TYPE_2__ {int mode; } ;







 struct eia608_screen* get_current_hidden_buffer (struct s_write*) ;
 struct eia608_screen* get_current_visible_buffer (struct s_write*) ;
 int hb_error (char*) ;

__attribute__((used)) static struct eia608_screen *get_writing_buffer(struct s_write *wb)
{
    struct eia608_screen *use_buffer=((void*)0);
    switch (wb->data608->mode)
    {
        case 132:
            use_buffer = get_current_hidden_buffer(wb);
            break;
        case 131:
        case 130:
        case 129:
        case 128:
            use_buffer = get_current_visible_buffer(wb);
            break;
        default:
            hb_error("Caption mode has an illegal value at get_writing_buffer(), this is a bug.");
    }
    return use_buffer;
}

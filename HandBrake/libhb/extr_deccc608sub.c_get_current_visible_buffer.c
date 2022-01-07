
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct eia608_screen {int dummy; } ;
struct TYPE_2__ {int visible_buffer; struct eia608_screen buffer2; struct eia608_screen buffer1; } ;



__attribute__((used)) static struct eia608_screen *get_current_visible_buffer(struct s_write *wb)
{
    struct eia608_screen *data;
    if (wb->data608->visible_buffer == 1)
        data = &wb->data608->buffer1;
    else
        data = &wb->data608->buffer2;
    return data;
}

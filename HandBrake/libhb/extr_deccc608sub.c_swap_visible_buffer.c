
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct TYPE_2__ {int visible_buffer; } ;



__attribute__((used)) static void swap_visible_buffer(struct s_write *wb)
{
    wb->data608->visible_buffer = (wb->data608->visible_buffer == 1) ? 2 : 1;
}

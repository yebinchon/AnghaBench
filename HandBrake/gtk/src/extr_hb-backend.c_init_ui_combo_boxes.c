
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t gint ;
struct TYPE_2__ {int * name; } ;
typedef int GtkBuilder ;


 TYPE_1__* combo_name_map ;
 int init_combo_box (int *,int *) ;

__attribute__((used)) static void
init_ui_combo_boxes(GtkBuilder *builder)
{
    gint ii;

    for (ii = 0; combo_name_map[ii].name != ((void*)0); ii++)
    {
        init_combo_box(builder, combo_name_map[ii].name);
    }
}

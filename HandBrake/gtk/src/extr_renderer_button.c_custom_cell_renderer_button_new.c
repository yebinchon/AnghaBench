
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkCellRenderer ;


 int CUSTOM_TYPE_CELL_RENDERER_BUTTON ;
 int * g_object_new (int ,int *) ;

GtkCellRenderer *
custom_cell_renderer_button_new (void)
{
    return g_object_new(CUSTOM_TYPE_CELL_RENDERER_BUTTON, ((void*)0));
}

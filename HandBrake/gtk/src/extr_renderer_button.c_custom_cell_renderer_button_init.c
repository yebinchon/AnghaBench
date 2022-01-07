
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CustomCellRendererButton ;


 int GTK_CELL_RENDERER_MODE_ACTIVATABLE ;
 int g_object_set (int *,char*,int,int *) ;

__attribute__((used)) static void
custom_cell_renderer_button_init (CustomCellRendererButton *cellbutton)
{
    g_object_set(cellbutton, "mode", GTK_CELL_RENDERER_MODE_ACTIVATABLE, ((void*)0));
    g_object_set(cellbutton, "xpad", 2, ((void*)0));
    g_object_set(cellbutton, "ypad", 2, ((void*)0));
}

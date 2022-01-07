
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int gboolean ;
typedef int MyGdkRectangle ;
typedef int GtkWidget ;
typedef int GtkCellRendererState ;
typedef int GtkCellRenderer ;
typedef int GdkEvent ;


 size_t CLICKED ;
 int TRUE ;
 int * button_cell_signals ;
 int g_debug (char*) ;
 int g_signal_emit (int *,int ,int ,int const*) ;

__attribute__((used)) static gboolean
custom_cell_renderer_button_activate (
        GtkCellRenderer *cell,
        GdkEvent *event,
        GtkWidget *widget,
        const gchar *path,
        MyGdkRectangle *background_area,
        MyGdkRectangle *cell_area,
        GtkCellRendererState flags)
{
    g_debug("custom_cell_renderer_button_activate ()\n");
    g_signal_emit (cell, button_cell_signals[CLICKED], 0, path);
    return TRUE;
}

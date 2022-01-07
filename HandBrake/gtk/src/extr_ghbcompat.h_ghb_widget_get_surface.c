
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;
typedef int GhbSurface ;


 int * gtk_widget_get_window (int *) ;

__attribute__((used)) static inline GhbSurface * ghb_widget_get_surface(GtkWidget * widget)
{
    return gtk_widget_get_window(widget);
}

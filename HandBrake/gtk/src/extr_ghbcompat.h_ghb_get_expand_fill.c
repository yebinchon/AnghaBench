
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GtkWidget ;
typedef int GtkBox ;


 scalar_t__ GTK_ALIGN_FILL ;
 int GTK_ORIENTABLE (int *) ;
 scalar_t__ GTK_ORIENTATION_HORIZONTAL ;
 scalar_t__ gtk_orientable_get_orientation (int ) ;
 scalar_t__ gtk_widget_get_halign (int *) ;
 int gtk_widget_get_hexpand (int *) ;
 scalar_t__ gtk_widget_get_valign (int *) ;
 int gtk_widget_get_vexpand (int *) ;

__attribute__((used)) static inline void ghb_get_expand_fill(GtkBox * box, GtkWidget * child,
                                       gboolean *expand, gboolean *fill)
{
    if (gtk_orientable_get_orientation(GTK_ORIENTABLE(box)) ==
        GTK_ORIENTATION_HORIZONTAL)
    {
        *expand = gtk_widget_get_hexpand(child);
        *fill = gtk_widget_get_halign(child) == GTK_ALIGN_FILL;
    }
    else
    {
        *expand = gtk_widget_get_vexpand(child);
        *fill = gtk_widget_get_valign(child) == GTK_ALIGN_FILL;
    }
}

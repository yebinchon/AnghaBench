
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkBuilder ;
typedef int GObject ;


 int g_message (char*,int const*) ;
 int * gtk_builder_get_object (int *,int const*) ;

GObject*
debug_get_object(GtkBuilder* b, const gchar *n)
{
    g_message("name %s\n", n);
    return gtk_builder_get_object(b, n);
}

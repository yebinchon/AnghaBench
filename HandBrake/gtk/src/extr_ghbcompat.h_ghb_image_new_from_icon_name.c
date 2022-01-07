
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkWidget ;
typedef int GtkIconSize ;


 int * gtk_image_new_from_icon_name (int const*,int ) ;

__attribute__((used)) static inline GtkWidget *
ghb_image_new_from_icon_name(const gchar * name, GtkIconSize size)
{
    return gtk_image_new_from_icon_name(name, size);
}

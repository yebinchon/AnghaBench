
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkImage ;
typedef int GtkIconSize ;


 int gtk_image_set_from_icon_name (int *,int const*,int ) ;

__attribute__((used)) static inline void
ghb_image_set_from_icon_name(GtkImage * image, const gchar * name,
                             GtkIconSize size)
{
    gtk_image_set_from_icon_name(image, name, size);
}

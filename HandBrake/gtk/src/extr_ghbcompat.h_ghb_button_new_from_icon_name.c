
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkWidget ;


 int GHB_ICON_SIZE_BUTTON ;
 int * gtk_button_new_from_icon_name (int const*,int ) ;

__attribute__((used)) static inline GtkWidget *
ghb_button_new_from_icon_name(const gchar * name)
{
    return gtk_button_new_from_icon_name(name, GHB_ICON_SIZE_BUTTON);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdouble ;
typedef int gchar ;
typedef int GtkWidget ;


 int GHB_ICON_SIZE_BUTTON ;
 int * gtk_scale_button_new (int ,int ,int ,int ,int const**) ;

__attribute__((used)) static inline GtkWidget *
ghb_scale_button_new(gdouble min, gdouble max, gdouble step,
                     const gchar ** icons)
{
    return gtk_scale_button_new(GHB_ICON_SIZE_BUTTON, min, max, step, icons);
}

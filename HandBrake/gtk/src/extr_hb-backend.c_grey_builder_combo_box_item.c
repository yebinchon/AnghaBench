
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gchar ;
typedef int gboolean ;
typedef int GtkComboBox ;
typedef int GtkBuilder ;


 int GHB_WIDGET (int *,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int grey_combo_box_item (int *,int ,int ) ;

__attribute__((used)) static void
grey_builder_combo_box_item(GtkBuilder *builder, const gchar *name, gint value, gboolean grey)
{
    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(builder, name));
    grey_combo_box_item(combo, value, grey);
}

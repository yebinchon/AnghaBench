
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkComboBox ;
typedef int GtkBuilder ;


 int GHB_WIDGET (int *,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int g_debug (char*,int const*) ;
 int ghb_init_combo_box (int *) ;

__attribute__((used)) static void
init_combo_box(GtkBuilder *builder, const gchar *name)
{
    GtkComboBox *combo;

    g_debug("init_combo_box() %s\n", name);

    combo = GTK_COMBO_BOX(GHB_WIDGET(builder, name));
    ghb_init_combo_box(combo);
}

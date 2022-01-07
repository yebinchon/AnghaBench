
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int combo; } ;
typedef int GtkWidget ;
typedef int GList ;


 int FALSE ;
 int GTK_BOX (int *) ;
 int GTK_COMBO_BOX (int ) ;
 int GTK_CONTAINER (int *) ;
 int G_CALLBACK (int ) ;
 int TRUE ;
 TYPE_1__* YUI_RANGE (int *) ;
 int * g_list_append (int *,int *) ;
 int g_signal_connect (int ,char*,int ,int *) ;
 int gtk_box_pack_start (int ,int *,int ,int ,int ) ;
 int gtk_container_set_border_width (int ,int) ;
 int * gtk_vbox_new (int ,int) ;
 int * gtk_vseparator_new () ;
 int gtk_widget_show_all (int *) ;
 int keyfile ;
 int keys1 ;
 int keys2 ;
 int percore_changed ;
 int percores ;
 int * yui_input_entry_new (int ,char*,int ) ;
 int * yui_range_new (int ,char*,char*,int ) ;

__attribute__((used)) static void pertype_display_pad(GtkWidget * box)
{
   GtkWidget * table4, * table5;
   GtkWidget * box_percore = gtk_vbox_new(FALSE, 10);
   GtkWidget * select_percore = yui_range_new(keyfile, "General", "PerCore", percores);
   GList * entrylist = ((void*)0);

   gtk_container_set_border_width(GTK_CONTAINER(select_percore), 0);

   gtk_container_set_border_width(GTK_CONTAINER(box_percore), 10);

   gtk_box_pack_start(GTK_BOX (box_percore), select_percore, FALSE, FALSE, 0);

   table4 = yui_input_entry_new(keyfile, "Pad", keys1);
   entrylist = g_list_append(entrylist, table4);

   gtk_box_pack_start (GTK_BOX (box_percore), table4, TRUE, TRUE, 0);

   gtk_box_pack_start (GTK_BOX (box), box_percore, TRUE, TRUE, 0);

   gtk_box_pack_start (GTK_BOX (box), gtk_vseparator_new(), TRUE, TRUE, 0);

   table5 = yui_input_entry_new(keyfile, "Pad", keys2);
   entrylist = g_list_append(entrylist, table5);

   gtk_container_set_border_width(GTK_CONTAINER(table5), 10);

   gtk_box_pack_start (GTK_BOX (box), table5, TRUE, TRUE, 0);

   g_signal_connect(GTK_COMBO_BOX(YUI_RANGE(select_percore)->combo), "changed", G_CALLBACK(percore_changed), entrylist);

   gtk_widget_show_all(box);
}

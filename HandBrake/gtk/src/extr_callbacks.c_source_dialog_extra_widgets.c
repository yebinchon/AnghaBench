
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gchar ;
struct TYPE_7__ {struct TYPE_7__* next; int data; } ;
typedef int GtkWidget ;
typedef int GtkComboBoxText ;
typedef TYPE_2__ GList ;


 int GHB_WIDGET (int ,char*) ;
 int GTK_COMBO_BOX (int *) ;
 int * GTK_COMBO_BOX_TEXT (int ) ;
 int GTK_LIST_STORE (int ) ;
 int * _ (char*) ;
 TYPE_2__* dvd_device_list () ;
 int free_drive (int ) ;
 int g_debug (char*) ;
 int g_free (int *) ;
 int g_list_free (TYPE_2__*) ;
 int * get_dvd_device_name (int ) ;
 int gtk_combo_box_get_model (int ) ;
 int gtk_combo_box_set_active (int ,int ) ;
 int gtk_combo_box_text_append_text (int *,int *) ;
 int gtk_list_store_clear (int ) ;

__attribute__((used)) static void
source_dialog_extra_widgets(
    signal_user_data_t *ud,
    GtkWidget *dialog)
{
    GtkComboBoxText *combo;
    GList *drives, *link;

    g_debug("source_dialog_extra_widgets ()");
    combo = GTK_COMBO_BOX_TEXT(GHB_WIDGET(ud->builder, "source_device"));
    gtk_list_store_clear(GTK_LIST_STORE(
                gtk_combo_box_get_model(GTK_COMBO_BOX(combo))));

    link = drives = dvd_device_list();
    gtk_combo_box_text_append_text (combo, _("Not Selected"));
    while (link != ((void*)0))
    {
        gchar *name = get_dvd_device_name(link->data);
        gtk_combo_box_text_append_text(combo, name);
        g_free(name);
        free_drive(link->data);
        link = link->next;
    }
    g_list_free(drives);
    gtk_combo_box_set_active(GTK_COMBO_BOX(combo), 0);
}

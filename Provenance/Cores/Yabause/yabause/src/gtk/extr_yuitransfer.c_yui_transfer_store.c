
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int to_entry; int to_label; int mode; } ;
typedef TYPE_1__ YuiTransfer ;
typedef int GtkWidget ;


 int GTK_TOGGLE_BUTTON (int *) ;
 int GTK_WIDGET (int ) ;
 int TRUE ;
 int YUI_TRANSFER_STORE ;
 scalar_t__ gtk_toggle_button_get_active (int ) ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int yui_transfer_check (TYPE_1__*) ;

__attribute__((used)) static void yui_transfer_store(GtkWidget * entry, YuiTransfer * yt) {
 if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(entry))) {
  yt->mode = YUI_TRANSFER_STORE;
  gtk_widget_set_sensitive(GTK_WIDGET(yt->to_label), TRUE);
  gtk_widget_set_sensitive(GTK_WIDGET(yt->to_entry), TRUE);
  yui_transfer_check(yt);
 }
}

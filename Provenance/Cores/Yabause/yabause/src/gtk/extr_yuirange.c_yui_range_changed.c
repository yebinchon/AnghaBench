
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int combo; TYPE_1__* items; int key; int group; int keyfile; } ;
typedef TYPE_2__ YuiRange ;
struct TYPE_5__ {int value; } ;
typedef int GtkWidget ;


 int GTK_COMBO_BOX (int ) ;
 int G_OBJECT (TYPE_2__*) ;
 size_t YUI_RANGE_CHANGED_SIGNAL ;
 int g_key_file_set_value (int ,int ,int ,int ) ;
 int g_signal_emit (int ,int ,int ) ;
 size_t gtk_combo_box_get_active (int ) ;
 int * yui_range_signals ;

__attribute__((used)) static void yui_range_changed(GtkWidget * entry, YuiRange * yfe) {
 g_key_file_set_value(yfe->keyfile, yfe->group, yfe->key,
   yfe->items[gtk_combo_box_get_active(GTK_COMBO_BOX(yfe->combo))].value);
 g_signal_emit(G_OBJECT(yfe), yui_range_signals[YUI_RANGE_CHANGED_SIGNAL], 0);
}

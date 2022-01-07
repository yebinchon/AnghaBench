
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; int group; int keyfile; } ;
typedef TYPE_1__ YuiCheckButton ;
typedef int GtkToggleButton ;


 int G_OBJECT (TYPE_1__*) ;
 size_t YUI_CHECK_BUTTON_CHANGED_SIGNAL ;
 int g_key_file_set_boolean (int ,int ,int ,int ) ;
 int g_signal_emit (int ,int ,int ) ;
 int gtk_toggle_button_get_active (int *) ;
 int * yui_check_button_signals ;

__attribute__((used)) static void yui_check_button_toggled(GtkToggleButton * button, YuiCheckButton * ycb) {
 g_key_file_set_boolean(ycb->keyfile, ycb->group, ycb->key,
                        gtk_toggle_button_get_active(button));
 g_signal_emit(G_OBJECT(ycb), yui_check_button_signals[YUI_CHECK_BUTTON_CHANGED_SIGNAL], 0);
}

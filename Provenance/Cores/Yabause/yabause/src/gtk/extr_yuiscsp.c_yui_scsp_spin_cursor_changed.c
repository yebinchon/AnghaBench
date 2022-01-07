
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursor; } ;
typedef TYPE_1__ YuiScsp ;
typedef int GtkWidget ;


 int GTK_SPIN_BUTTON (int *) ;
 int gtk_spin_button_get_value_as_int (int ) ;
 int yui_scsp_fill (TYPE_1__*) ;

__attribute__((used)) static void yui_scsp_spin_cursor_changed(GtkWidget * spin, YuiScsp * scsp) {
 scsp->cursor = gtk_spin_button_get_value_as_int(GTK_SPIN_BUTTON(spin));
 yui_scsp_fill(scsp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gint ;
struct TYPE_5__ {int address; } ;
typedef TYPE_1__ YuiMem ;
struct TYPE_6__ {int address; } ;
typedef int GtkWidget ;


 int GTK_COMBO_BOX (int *) ;
 int gtk_combo_box_get_active (int ) ;
 TYPE_4__* quickAddress ;
 int yui_mem_update (TYPE_1__*) ;

__attribute__((used)) static void yui_mem_combo_changed(GtkWidget * w, YuiMem * ym) {

  gint i = gtk_combo_box_get_active( GTK_COMBO_BOX(w) );

  if (i > -1) {
    ym->address = quickAddress[i].address;
    yui_mem_update(ym);
  }
}

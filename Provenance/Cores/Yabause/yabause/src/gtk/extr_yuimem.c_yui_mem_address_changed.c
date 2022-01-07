
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address; } ;
typedef TYPE_1__ YuiMem ;
typedef int GtkWidget ;


 int GTK_ENTRY (int *) ;
 int gtk_entry_get_text (int ) ;
 int sscanf (int ,char*,int *) ;
 int yui_mem_update (TYPE_1__*) ;

__attribute__((used)) static void yui_mem_address_changed(GtkWidget * w, YuiMem * ym) {
 sscanf(gtk_entry_get_text(GTK_ENTRY(w)), "%x", &ym->address);
 yui_mem_update(ym);
}

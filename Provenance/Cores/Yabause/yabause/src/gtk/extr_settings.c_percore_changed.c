
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
struct TYPE_8__ {char* value; } ;
struct TYPE_7__ {int data; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GList ;


 int GTK_COMBO_BOX (int *) ;
 int PerDeInit () ;
 int PerInit (int) ;
 TYPE_1__* g_list_next (TYPE_1__*) ;
 size_t gtk_combo_box_get_active (int ) ;
 TYPE_3__* percores ;
 int sscanf (char const*,char*,int*) ;
 int yui_input_entry_update (int ) ;

__attribute__((used)) static void percore_changed(GtkWidget * widget, gpointer data) {
 const char * core_s = percores[gtk_combo_box_get_active(GTK_COMBO_BOX(widget))].value;
 GList * entrylist = data;
 int core;
 sscanf(core_s, "%d", &core);

 PerDeInit();
 PerInit(core);

 while(entrylist) {
  yui_input_entry_update(entrylist->data);
  entrylist = g_list_next(entrylist);
 }
}

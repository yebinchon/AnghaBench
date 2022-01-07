
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ gpointer ;
typedef int gboolean ;
struct TYPE_7__ {int Name; int (* KeyName ) (int ,char*,int) ;scalar_t__ canScan; } ;
struct TYPE_6__ {char* group; int keyfile; } ;
struct TYPE_5__ {int keyval; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GdkEventKey ;


 int FALSE ;
 int GTK_ENTRY (int *) ;
 TYPE_4__* PERCore ;
 int TRUE ;
 TYPE_3__* YUI_INPUT_ENTRY (int ) ;
 int g_key_file_set_integer (int ,int ,char*,int ) ;
 int gtk_entry_set_text (int ,char*) ;
 int gtk_widget_get_parent (int *) ;
 int sprintf (char*,char*,char*,char*) ;
 int stub1 (int ,char*,int) ;

gboolean yui_input_entry_keypress(GtkWidget * widget, GdkEventKey * event, gpointer name) {
 char tmp[100];

 if (PERCore->canScan) return FALSE;

 PERCore->KeyName(event->keyval, tmp, 100);
 gtk_entry_set_text(GTK_ENTRY(widget), tmp);
 sprintf(tmp, "%s.%s.1", YUI_INPUT_ENTRY(gtk_widget_get_parent(widget))->group, (char *)name);
 g_key_file_set_integer(YUI_INPUT_ENTRY(gtk_widget_get_parent(widget))->keyfile,
  PERCore->Name, tmp, event->keyval);

 return TRUE;
}

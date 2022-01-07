
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gpointer ;
typedef scalar_t__ gboolean ;
struct TYPE_2__ {int (* Flush ) () ;int canScan; } ;
typedef int GtkWidget ;
typedef int GdkEventFocus ;


 scalar_t__ FALSE ;
 int GTK_ENTRY (int *) ;
 TYPE_1__* PERCore ;
 scalar_t__ TRUE ;
 int entry_hack ;
 int g_timeout_add (int,int ,int ) ;
 scalar_t__ is_watching ;
 int stub1 () ;
 int watch_joy ;

gboolean yui_input_entry_focus_in(GtkWidget * widget, GdkEventFocus * event, gpointer name) {
 if (! PERCore->canScan) return TRUE;

 PERCore->Flush();
 entry_hack = GTK_ENTRY(widget);

 if (!is_watching) {
  g_timeout_add(100, watch_joy, name);
  is_watching = TRUE;
 }

 return FALSE;
}

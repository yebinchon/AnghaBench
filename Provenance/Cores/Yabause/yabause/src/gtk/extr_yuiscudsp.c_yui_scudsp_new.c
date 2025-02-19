
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


struct TYPE_33__ {int addr; } ;
typedef TYPE_1__ scucodebreakpoint_struct ;
typedef int gint ;
typedef char gchar ;
struct TYPE_34__ {int state; int* cbp; void* running_handler; void* paused_handler; int hbox; int action_group; struct TYPE_34__* buttonStep; int bpListStore; int regListStore; } ;
typedef TYPE_2__ YuiWindow ;
typedef TYPE_2__ GtkWidget ;
typedef int GtkTreeIter ;
typedef int GtkAccelGroup ;
typedef int GClosure ;


 int FALSE ;
 int GDK_F7 ;
 int GTK_BOX (int ) ;
 int GTK_LIST_STORE (int ) ;
 TYPE_2__* GTK_WIDGET (TYPE_2__*) ;
 int GTK_WINDOW (TYPE_2__*) ;
 int G_CALLBACK (int (*) (TYPE_2__*)) ;
 int MAX_BREAKPOINTS ;
 TYPE_1__* ScuDspGetBreakpointList () ;
 int ScuDspSetBreakpointCallBack (int *) ;
 int YUI_IS_INIT ;
 int YUI_IS_RUNNING ;
 TYPE_2__* YUI_SCUDSP (TYPE_2__*) ;
 int * g_cclosure_new (int ,TYPE_2__*,int *) ;
 TYPE_2__* g_object_new (int ,int *) ;
 int g_signal_connect (TYPE_2__*,char*,int ,TYPE_2__*) ;
 void* g_signal_connect_swapped (TYPE_2__*,char*,int ,TYPE_2__*) ;
 int gtk_accel_group_connect (int *,int ,int ,int ,int *) ;
 int * gtk_accel_group_new () ;
 int gtk_action_connect_proxy (int ,TYPE_2__*) ;
 int gtk_action_group_get_action (int ,char*) ;
 int gtk_box_pack_start (int ,TYPE_2__*,int ,int ,int) ;
 TYPE_2__* gtk_button_new () ;
 TYPE_2__* gtk_button_new_from_stock (char*) ;
 TYPE_2__* gtk_button_new_with_label (char*) ;
 int gtk_list_store_append (int ,int *) ;
 int gtk_list_store_set (int ,int *,int ,char*,int) ;
 int gtk_widget_show_all (TYPE_2__*) ;
 int gtk_window_add_accel_group (int ,int *) ;
 int sprintf (char*,char*,int) ;
 TYPE_2__* yui ;
 TYPE_2__* yui_scudsp ;
 int yui_scudsp_breakpoint_handler ;
 int yui_scudsp_clear (TYPE_2__*) ;
 int yui_scudsp_destroy (TYPE_2__*) ;
 int yui_scudsp_get_type () ;
 int yui_scudsp_step (TYPE_2__*) ;
 int yui_scudsp_update (TYPE_2__*) ;
 int yui_window_pause (TYPE_2__*) ;
 int yui_window_run (TYPE_2__*) ;

GtkWidget * yui_scudsp_new(YuiWindow * y) {
  GtkWidget * dialog;
  GClosure *closureF7;
  GtkAccelGroup *accelGroup;
  const scucodebreakpoint_struct *cbp;
  gint i;
  yui = y;

  if ( yui_scudsp ) return GTK_WIDGET(yui_scudsp);

  dialog = GTK_WIDGET(g_object_new(yui_scudsp_get_type(), ((void*)0)));
  yui_scudsp = YUI_SCUDSP(dialog);

  if (!( yui->state & YUI_IS_INIT )) {
    yui_window_run(yui);
    yui_window_pause(yui);
  }

  ScuDspSetBreakpointCallBack(&yui_scudsp_breakpoint_handler);

  for (i = 0; i < 23 ; i++) {

    GtkTreeIter iter;
    gtk_list_store_append( GTK_LIST_STORE( yui_scudsp->regListStore ), &iter );
  }

  cbp = ScuDspGetBreakpointList();

  for (i = 0; i < MAX_BREAKPOINTS; i++) {

    GtkTreeIter iter;
    yui_scudsp->cbp[i] = cbp[i].addr;
    gtk_list_store_append( GTK_LIST_STORE( yui_scudsp->bpListStore ), &iter );
    if (cbp[i].addr != 0xFFFFFFFF) {

      gchar tempstr[20];
      sprintf(tempstr, "%08X", (int)cbp[i].addr);
      gtk_list_store_set( GTK_LIST_STORE( yui_scudsp->bpListStore ), &iter, 0, tempstr, -1 );
    } else gtk_list_store_set( GTK_LIST_STORE( yui_scudsp->bpListStore ), &iter, 0, "<empty>", -1 );
  }

  {
    GtkWidget * but2, * but3, * but4;

    yui_scudsp->buttonStep = gtk_button_new_with_label( "Step [F7]" );
    gtk_box_pack_start( GTK_BOX( yui_scudsp->hbox ), yui_scudsp->buttonStep, FALSE, FALSE, 2 );
    g_signal_connect( yui_scudsp->buttonStep, "clicked", G_CALLBACK(yui_scudsp_step), yui_scudsp );

    but2 = gtk_button_new();
    gtk_action_connect_proxy(gtk_action_group_get_action(yui->action_group, "run"), but2);
    gtk_box_pack_start(GTK_BOX(yui_scudsp->hbox), but2, FALSE, FALSE, 2);

    but3 = gtk_button_new();
    gtk_action_connect_proxy(gtk_action_group_get_action(yui->action_group, "pause"), but3);
    gtk_box_pack_start(GTK_BOX(yui_scudsp->hbox), but3, FALSE, FALSE, 2);

    but4 = gtk_button_new_from_stock("gtk-close");
    g_signal_connect_swapped(but4, "clicked", G_CALLBACK(yui_scudsp_destroy), dialog);
    gtk_box_pack_start(GTK_BOX(yui_scudsp->hbox), but4, FALSE, FALSE, 2);
  }
  yui_scudsp->paused_handler = g_signal_connect_swapped(yui, "paused", G_CALLBACK(yui_scudsp_update), yui_scudsp);
  yui_scudsp->running_handler = g_signal_connect_swapped(yui, "running", G_CALLBACK(yui_scudsp_clear), yui_scudsp);
  accelGroup = gtk_accel_group_new ();
  closureF7 = g_cclosure_new (G_CALLBACK (yui_scudsp_step), yui_scudsp, ((void*)0));
  gtk_accel_group_connect( accelGroup, GDK_F7, 0, 0, closureF7 );
  gtk_window_add_accel_group( GTK_WINDOW( dialog ), accelGroup );

  yui_scudsp_update(yui_scudsp);
  if ( yui->state & YUI_IS_RUNNING ) yui_scudsp_clear(yui_scudsp);

  gtk_widget_show_all(GTK_WIDGET(yui_scudsp));

  return dialog;
}

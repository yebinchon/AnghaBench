
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef char gchar ;
typedef scalar_t__ gboolean ;
struct TYPE_12__ {scalar_t__ state; int * area; int clean_handler; int * menu; int * box; int log; struct TYPE_12__* logpopup; int action_group; } ;
typedef TYPE_1__ YuiWindow ;
typedef int GtkWidget ;
typedef int GtkAccelGroup ;
typedef int GList ;


 scalar_t__ FALSE ;
 int GTK_BOX (int *) ;
 int GTK_CONTAINER (TYPE_1__*) ;
 int GTK_POLICY_AUTOMATIC ;
 int GTK_SCROLLED_WINDOW (int *) ;
 TYPE_1__* GTK_WIDGET (int *) ;
 int GTK_WINDOW (TYPE_1__*) ;
 int GTK_WINDOW_TOPLEVEL ;
 int G_CALLBACK (int ) ;
 int G_FILE_TEST_EXISTS ;
 int * G_OBJECT (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int * create_menu (TYPE_1__*) ;
 char* g_build_filename (char const* const,char*,char*,int *) ;
 scalar_t__ g_file_test (char*,int ) ;
 char** g_get_system_data_dirs () ;
 int g_list_foreach (int *,int ,int *) ;
 int g_signal_connect (int *,char*,int ,TYPE_1__*) ;
 int gdk_pixbuf_new_from_file (char*,int *) ;
 int * gtk_accel_group_new () ;
 int gtk_action_group_get_action (int ,char*) ;
 int * gtk_action_group_list_actions (int ) ;
 int gtk_action_group_new (char*) ;
 int gtk_action_set_sensitive (int ,scalar_t__) ;
 int gtk_box_pack_start (int ,int *,scalar_t__,scalar_t__,int ) ;
 int gtk_container_add (int ,int *) ;
 int gtk_scrolled_window_add_with_viewport (int ,int ) ;
 int * gtk_scrolled_window_new (int *,int *) ;
 int gtk_scrolled_window_set_policy (int ,int ,int ) ;
 int gtk_text_view_new () ;
 int * gtk_vbox_new (scalar_t__,int ) ;
 int gtk_widget_set_size_request (TYPE_1__*,int,int) ;
 int gtk_widget_show (int *) ;
 int gtk_widget_show_all (int *) ;
 int gtk_window_add_accel_group (int ,int *) ;
 TYPE_1__* gtk_window_new (int ) ;
 int gtk_window_set_icon (int ,int ) ;
 int gtk_window_set_title (int ,char*) ;
 int * yui_gl_new () ;
 int yui_set_accel_group ;
 int yui_window_create_actions (TYPE_1__*) ;
 int yui_window_destroy ;
 int yui_window_keep_clean ;
 int yui_window_keypress ;
 int yui_window_keyrelease ;
 int yui_window_log_delete ;

__attribute__((used)) static void yui_window_init (YuiWindow * yw) {
 GtkAccelGroup * accel_group = gtk_accel_group_new();
 GtkWidget * scroll;

 yw->action_group = gtk_action_group_new("yui");
 yui_window_create_actions(yw);
 gtk_action_set_sensitive(gtk_action_group_get_action(yw->action_group, "pause"), FALSE);
 gtk_action_set_sensitive(gtk_action_group_get_action(yw->action_group, "reset"), FALSE);
 {
  GList * list = gtk_action_group_list_actions(yw->action_group);
  g_list_foreach(list, yui_set_accel_group, accel_group);
 }
 gtk_window_add_accel_group(GTK_WINDOW(yw), accel_group);

 {
  const gchar * const * data_dir;
  gboolean pngfound = FALSE;
  gchar * pngfile;

  data_dir = g_get_system_data_dirs();
  while (!pngfound && (*data_dir != ((void*)0))) {
   pngfile = g_build_filename(*data_dir, "pixmaps", "yabause.png", ((void*)0));
   if (g_file_test(pngfile, G_FILE_TEST_EXISTS)) {
    gtk_window_set_icon(GTK_WINDOW(yw), gdk_pixbuf_new_from_file(pngfile, ((void*)0)));
    pngfound = TRUE;
   }
   data_dir++;
  }

  if (!pngfound) {
   gtk_window_set_icon(GTK_WINDOW(yw), gdk_pixbuf_new_from_file("yabause.png", ((void*)0)));
  }
 }

 gtk_window_set_title (GTK_WINDOW(yw), "Yabause");

 yw->box = gtk_vbox_new(FALSE, 0);
 gtk_container_add(GTK_CONTAINER(yw), yw->box);

 yw->menu = create_menu(yw);
 gtk_box_pack_start(GTK_BOX(yw->box), yw->menu, FALSE, FALSE, 0);

 yw->area = yui_gl_new();
 gtk_box_pack_start(GTK_BOX(yw->box), yw->area, TRUE, TRUE, 0);
 gtk_widget_set_size_request(GTK_WIDGET(yw->area), 320, 224);

 g_signal_connect(G_OBJECT(yw), "delete-event", G_CALLBACK(yui_window_destroy), ((void*)0));
 g_signal_connect(G_OBJECT(yw), "key-press-event", G_CALLBACK(yui_window_keypress), yw);
 g_signal_connect(G_OBJECT(yw), "key-release-event", G_CALLBACK(yui_window_keyrelease), yw);

 yw->logpopup = gtk_window_new(GTK_WINDOW_TOPLEVEL);
 gtk_window_set_title( GTK_WINDOW( yw->logpopup ), "Yabause Logs" );
 gtk_widget_set_size_request( yw->logpopup, 500, 300 );
 scroll = gtk_scrolled_window_new(((void*)0), ((void*)0));
 gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(scroll), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
 gtk_container_add(GTK_CONTAINER(yw->logpopup), scroll);
 g_signal_connect(G_OBJECT(yw->logpopup), "delete-event", G_CALLBACK(yui_window_log_delete), yw);

 yw->log = gtk_text_view_new();
 gtk_scrolled_window_add_with_viewport(GTK_SCROLLED_WINDOW(scroll), yw->log);

 gtk_widget_show(yw->box);
 gtk_widget_show_all(yw->menu);
 gtk_widget_show(yw->area);

 yw->clean_handler = g_signal_connect(yw->area, "expose-event", G_CALLBACK(yui_window_keep_clean), yw);
 yw->state = 0;
}

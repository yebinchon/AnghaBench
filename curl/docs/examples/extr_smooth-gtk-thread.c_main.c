
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int GtkWidget ;


 int CURL_GLOBAL_ALL ;
 int FALSE ;
 int GINT_TO_POINTER (int ) ;
 int GTK_CONTAINER (int *) ;
 int GTK_FRAME (int *) ;
 int GTK_PROGRESS_BAR (int *) ;
 int GTK_SHADOW_IN ;
 int GTK_SHADOW_OUT ;
 int GTK_WINDOW_TOPLEVEL ;
 int G_CALLBACK (int ) ;
 int G_OBJECT (int *) ;
 int cb_delete ;
 int create_thread ;
 int curl_global_init (int ) ;
 int g_object_set_data (int ,char*,int ) ;
 int g_signal_connect (int ,char*,int ,int *) ;
 int g_thread_create (int *,int *,int ,int *) ;
 int g_thread_init (int *) ;
 int g_timeout_add (int,int ,int *) ;
 int g_warning (char*) ;
 int gdk_threads_enter () ;
 int gdk_threads_init () ;
 int gdk_threads_leave () ;
 int gtk_container_add (int ,int *) ;
 int gtk_container_set_border_width (int ,int) ;
 int * gtk_frame_new (int *) ;
 int gtk_frame_set_shadow_type (int ,int ) ;
 int gtk_init (int*,char***) ;
 int gtk_main () ;
 int * gtk_progress_bar_new () ;
 int gtk_progress_bar_pulse (int ) ;
 int gtk_widget_show_all (int *) ;
 int * gtk_window_new (int ) ;
 int printf (char*) ;
 int pulse_bar ;

int main(int argc, char **argv)
{
  GtkWidget *top_window, *outside_frame, *inside_frame, *progress_bar;


  curl_global_init(CURL_GLOBAL_ALL);


  g_thread_init(((void*)0));
  gdk_threads_init();
  gdk_threads_enter();

  gtk_init(&argc, &argv);


  top_window = gtk_window_new(GTK_WINDOW_TOPLEVEL);


  outside_frame = gtk_frame_new(((void*)0));
  gtk_frame_set_shadow_type(GTK_FRAME(outside_frame), GTK_SHADOW_OUT);
  gtk_container_add(GTK_CONTAINER(top_window), outside_frame);


  inside_frame = gtk_frame_new(((void*)0));
  gtk_frame_set_shadow_type(GTK_FRAME(inside_frame), GTK_SHADOW_IN);
  gtk_container_set_border_width(GTK_CONTAINER(inside_frame), 5);
  gtk_container_add(GTK_CONTAINER(outside_frame), inside_frame);


  progress_bar = gtk_progress_bar_new();
  gtk_progress_bar_pulse(GTK_PROGRESS_BAR (progress_bar));

  gint pulse_ref = g_timeout_add(300, pulse_bar, progress_bar);
  g_object_set_data(G_OBJECT(progress_bar), "pulse_id",
                    GINT_TO_POINTER(pulse_ref));
  gtk_container_add(GTK_CONTAINER(inside_frame), progress_bar);

  gtk_widget_show_all(top_window);
  printf("gtk_widget_show_all\n");

  g_signal_connect(G_OBJECT (top_window), "delete-event",
                   G_CALLBACK(cb_delete), ((void*)0));

  if(!g_thread_create(&create_thread, progress_bar, FALSE, ((void*)0)) != 0)
    g_warning("can't create the thread");

  gtk_main();
  gdk_threads_leave();
  printf("gdk_threads_leave\n");

  return 0;
}

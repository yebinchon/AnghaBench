
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;
typedef int GtkAdjustment ;


 int * Bar ;
 int CURL_GLOBAL_ALL ;
 int FALSE ;
 int GTK_CONTAINER (int *) ;
 int GTK_FRAME (int *) ;
 int GTK_SHADOW_IN ;
 int GTK_SHADOW_OUT ;
 int GTK_WINDOW_TOPLEVEL ;
 int curl_global_init (int ) ;
 int g_thread_create (int *,char*,int ,int *) ;
 int g_thread_init (int *) ;
 int g_warning (char*) ;
 int gdk_threads_enter () ;
 int gdk_threads_leave () ;
 scalar_t__ gtk_adjustment_new (int ,int ,int,int ,int ,int ) ;
 int gtk_container_add (int ,int *) ;
 int gtk_container_set_border_width (int ,int) ;
 int * gtk_frame_new (int *) ;
 int gtk_frame_set_shadow_type (int ,int ) ;
 int gtk_init (int*,char***) ;
 int gtk_main () ;
 int * gtk_progress_bar_new_with_adjustment (int *) ;
 int gtk_widget_show_all (int *) ;
 int * gtk_window_new (int ) ;
 int my_thread ;

int main(int argc, char **argv)
{
  GtkWidget *Window, *Frame, *Frame2;
  GtkAdjustment *adj;


  curl_global_init(CURL_GLOBAL_ALL);


  g_thread_init(((void*)0));

  gtk_init(&argc, &argv);
  Window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  Frame = gtk_frame_new(((void*)0));
  gtk_frame_set_shadow_type(GTK_FRAME(Frame), GTK_SHADOW_OUT);
  gtk_container_add(GTK_CONTAINER(Window), Frame);
  Frame2 = gtk_frame_new(((void*)0));
  gtk_frame_set_shadow_type(GTK_FRAME(Frame2), GTK_SHADOW_IN);
  gtk_container_add(GTK_CONTAINER(Frame), Frame2);
  gtk_container_set_border_width(GTK_CONTAINER(Frame2), 5);
  adj = (GtkAdjustment*)gtk_adjustment_new(0, 0, 100, 0, 0, 0);
  Bar = gtk_progress_bar_new_with_adjustment(adj);
  gtk_container_add(GTK_CONTAINER(Frame2), Bar);
  gtk_widget_show_all(Window);

  if(!g_thread_create(&my_thread, argv[1], FALSE, ((void*)0)) != 0)
    g_warning("can't create the thread");


  gdk_threads_enter();
  gtk_main();
  gdk_threads_leave();
  return 0;
}

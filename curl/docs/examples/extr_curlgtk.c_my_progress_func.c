
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;


 int GTK_PROGRESS (int *) ;
 int gdk_threads_enter () ;
 int gdk_threads_leave () ;
 int gtk_progress_set_value (int ,double) ;

int my_progress_func(GtkWidget *bar,
                     double t,
                     double d,
                     double ultotal,
                     double ulnow)
{

  gdk_threads_enter();
  gtk_progress_set_value(GTK_PROGRESS(bar), d*100.0/t);
  gdk_threads_leave();
  return 0;
}

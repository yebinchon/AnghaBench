
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gboolean ;


 int GTK_PROGRESS_BAR (int ) ;
 int TRUE ;
 int gdk_threads_enter () ;
 int gdk_threads_leave () ;
 int gtk_progress_bar_pulse (int ) ;

gboolean pulse_bar(gpointer data)
{
  gdk_threads_enter();
  gtk_progress_bar_pulse(GTK_PROGRESS_BAR (data));
  gdk_threads_leave();




  return TRUE;
}

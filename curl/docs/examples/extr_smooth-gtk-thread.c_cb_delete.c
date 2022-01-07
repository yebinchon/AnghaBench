
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gboolean ;
typedef int GtkWidget ;


 int FALSE ;
 int gtk_main_quit () ;

__attribute__((used)) static gboolean cb_delete(GtkWidget *window, gpointer data)
{
  gtk_main_quit();
  return FALSE;
}

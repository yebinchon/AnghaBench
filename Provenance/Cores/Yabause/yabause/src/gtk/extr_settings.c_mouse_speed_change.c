
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkWidget ;


 int GTK_RANGE (int *) ;
 int g_key_file_set_double (int ,char*,char*,int ) ;
 int gtk_range_get_value (int ) ;
 int keyfile ;

__attribute__((used)) static void mouse_speed_change(GtkWidget * range, gpointer data)
{
   g_key_file_set_double(keyfile, "General", "MouseSpeed", gtk_range_get_value(GTK_RANGE(range)));
}

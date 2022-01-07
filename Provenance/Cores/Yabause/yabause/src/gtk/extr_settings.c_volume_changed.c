
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkRange ;


 int g_key_file_set_integer (int ,char*,char*,int) ;
 scalar_t__ gtk_range_get_value (int *) ;
 int keyfile ;

__attribute__((used)) static void volume_changed(GtkRange * range, gpointer data) {
    g_key_file_set_integer(keyfile, "General", "Volume", (int) gtk_range_get_value(range));
}

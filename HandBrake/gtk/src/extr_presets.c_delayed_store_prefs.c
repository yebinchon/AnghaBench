
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gboolean ;


 int FALSE ;
 int prefsDict ;
 scalar_t__ prefs_timeout_id ;
 int write_config_file (char*,int ) ;

__attribute__((used)) static gboolean
delayed_store_prefs(gpointer data)
{
    write_config_file("preferences.json", prefsDict);
    prefs_timeout_id = 0;
    return FALSE;
}

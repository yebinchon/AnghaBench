
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int globals; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gchar ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 int g_free (int *) ;
 int * g_strdup (int ) ;
 int ghb_dict_get_string (int ,char*) ;
 int ghb_do_scan (TYPE_1__*,int *,int ,int ) ;

gboolean
ghb_idle_scan(signal_user_data_t *ud)
{
    gchar *path;


    path = g_strdup(ghb_dict_get_string(ud->globals, "scan_source"));
    ghb_do_scan(ud, path, 0, TRUE);
    g_free(path);
    return FALSE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prefs; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gchar ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ghb_dict_get_bool (int ,char*) ;
 int * ghb_dict_get_string (int ,char*) ;
 int * strstr (int const*,char const*) ;

__attribute__((used)) static gboolean
check_name_template(signal_user_data_t *ud, const char *str)
{
    if (ghb_dict_get_bool(ud->prefs, "auto_name"))
    {
        const gchar *template;

        template = ghb_dict_get_string(ud->prefs, "auto_name_template");
        if (strstr(template, str) != ((void*)0))
            return TRUE;
    }
    return FALSE;
}

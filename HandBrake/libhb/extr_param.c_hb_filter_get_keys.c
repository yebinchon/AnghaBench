
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* settings_template; } ;
typedef TYPE_1__ hb_filter_object_t ;


 char** calloc (int,int) ;
 TYPE_1__* hb_filter_get (int) ;
 int hb_str_vfree (char**) ;
 char** hb_str_vsplit (char*,char) ;
 char* strdup (char*) ;

char ** hb_filter_get_keys(int filter_id)
{
    hb_filter_object_t * filter = hb_filter_get(filter_id);

    if (filter == ((void*)0) || filter->settings_template == ((void*)0))
    {
        return ((void*)0);
    }

    char ** tmpl = hb_str_vsplit(filter->settings_template, ':');
    int ii, count = 0;

    for (ii = 0; tmpl[ii] != ((void*)0); ii++)
    {
        count++;
    }
    char ** result = calloc(count + 1, sizeof(char*));
    for (ii = 0; tmpl[ii] != ((void*)0); ii++)
    {
        char ** pair = hb_str_vsplit(tmpl[ii], '=');
        result[ii] = strdup(pair[0]);
        hb_str_vfree(pair);
    }
    result[ii] = ((void*)0);
    hb_str_vfree(tmpl);

    return result;
}

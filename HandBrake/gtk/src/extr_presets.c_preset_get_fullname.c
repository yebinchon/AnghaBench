
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int depth; } ;
typedef TYPE_1__ hb_preset_index_t ;
typedef scalar_t__ gboolean ;
typedef int GhbValue ;
typedef int GString ;


 int FALSE ;
 int free (TYPE_1__*) ;
 int g_free (char*) ;
 char* g_markup_escape_text (char const*,int) ;
 int g_string_append (int *,char const*) ;
 char* g_string_free (int *,int ) ;
 int * g_string_new (char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int * hb_preset_get (TYPE_1__*) ;
 TYPE_1__* hb_preset_index_dup (TYPE_1__*) ;

char*
preset_get_fullname(hb_preset_index_t *path, const char * sep, gboolean escape)
{
    int ii;
    GString *gstr;
    hb_preset_index_t *tmp;
    GhbValue *dict;

    gstr = g_string_new("");
    tmp = hb_preset_index_dup(path);
    for (ii = 1; ii <= path->depth; ii++)
    {
        const char *name;
        tmp->depth = ii;
        dict = hb_preset_get(tmp);
        if (dict == ((void*)0))
        {
            break;
        }
        name = ghb_dict_get_string(dict, "PresetName");
        if (name != ((void*)0))
        {
            g_string_append(gstr, sep);
            if (escape)
            {
                char * esc = g_markup_escape_text(name, -1);
                g_string_append(gstr, esc);
                g_free(esc);
            }
            else
            {
                g_string_append(gstr, name);
            }
        }
    }
    free(tmp);
    char *str = g_string_free(gstr, FALSE);
    return str;
}

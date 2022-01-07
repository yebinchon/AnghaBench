
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;
typedef int GhbValue ;


 int FALSE ;
 void* ghb_dict_get (int *,char const*) ;
 int * ghb_dict_get_value (int *,char const*) ;
 int ghb_dict_set (int *,char const*,int ) ;
 scalar_t__ ghb_value_cmp (int const*,int const*) ;
 int ghb_value_dup (int const*) ;
 int * prefsDict ;
 int prefs_modified ;
 int store_prefs () ;

void
ghb_pref_save(GhbValue *settings, const gchar *key)
{
    const GhbValue *value, *value2;

    value = ghb_dict_get_value(settings, key);
    if (value != ((void*)0))
    {
        GhbValue *dict;
        dict = ghb_dict_get(prefsDict, "Preferences");
        if (dict == ((void*)0)) return;
        value2 = ghb_dict_get(dict, key);
        if (ghb_value_cmp(value, value2) != 0)
        {
            ghb_dict_set(dict, key, ghb_value_dup(value));
            store_prefs();
            prefs_modified = FALSE;
        }
    }
}

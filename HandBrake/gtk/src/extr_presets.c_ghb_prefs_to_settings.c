
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int ghb_dict_copy (int *,int *) ;
 int * ghb_dict_get (int *,char*) ;
 int * prefsDict ;

void
ghb_prefs_to_settings(GhbValue *settings)
{

    GhbValue *dict;

    if (prefsDict == ((void*)0))
        return;






    dict = ghb_dict_get(prefsDict, "Preferences");
    ghb_dict_copy(settings, dict);
}

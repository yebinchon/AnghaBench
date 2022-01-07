
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int ghb_dict_copy (int *,int *) ;
 int * ghb_dict_get (int *,char const*) ;
 int * ghb_resource_get (char*) ;

void
ghb_settings_init(GhbValue *settings, const char *name)
{
    GhbValue *internal;

    GhbValue *internalDict = ghb_resource_get("internal-defaults");





    internal = ghb_dict_get(internalDict, name);
    ghb_dict_copy(settings, internal);
}

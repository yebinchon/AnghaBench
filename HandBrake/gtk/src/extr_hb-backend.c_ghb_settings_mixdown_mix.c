
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 char* ghb_dict_get_string (int const*,char const*) ;
 int ghb_lookup_mixdown_mix (char const*) ;

int
ghb_settings_mixdown_mix(const GhbValue *settings, const char *name)
{
    const char *mixdown_id = ghb_dict_get_string(settings, name);
    return ghb_lookup_mixdown_mix(mixdown_id);
}

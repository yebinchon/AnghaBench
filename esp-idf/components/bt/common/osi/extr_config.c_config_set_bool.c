
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_t ;


 int assert (int ) ;
 int config_set_string (int *,char const*,char const*,char*,int) ;

void config_set_bool(config_t *config, const char *section, const char *key, bool value)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));

    config_set_string(config, section, key, value ? "true" : "false", 0);
}

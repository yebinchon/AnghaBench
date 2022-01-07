
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * config ;
 int config_set_string (int *,char const*,char const*,char const*,int) ;

bool btc_config_set_str(const char *section, const char *key, const char *value)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));
    assert(value != ((void*)0));

    config_set_string(config, section, key, value, 0);

    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * config ;
 int config_get_int (int *,char const*,char const*,int) ;
 int config_has_key (int *,char const*,char const*) ;

bool btc_config_get_int(const char *section, const char *key, int *value)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));
    assert(value != ((void*)0));

    bool ret = config_has_key(config, section, key);
    if (ret) {
        *value = config_get_int(config, section, key, *value);
    }

    return ret;
}

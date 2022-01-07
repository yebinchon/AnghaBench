
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * config ;
 char* config_get_string (int *,char const*,char const*,int *) ;
 size_t strlen (char const*) ;

size_t btc_config_get_bin_length(const char *section, const char *key)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));

    const char *value_str = config_get_string(config, section, key, ((void*)0));

    if (!value_str) {
        return 0;
    }

    size_t value_len = strlen(value_str);
    return ((value_len % 2) != 0) ? 0 : (value_len / 2);
}

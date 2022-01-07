
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * config ;
 char* config_get_string (int *,char const*,char const*,int *) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;

bool btc_config_get_str(const char *section, const char *key, char *value, int *size_bytes)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));
    assert(value != ((void*)0));
    assert(size_bytes != ((void*)0));

    const char *stored_value = config_get_string(config, section, key, ((void*)0));

    if (!stored_value) {
        return 0;
    }

    strlcpy(value, stored_value, *size_bytes);
    *size_bytes = strlen(value) + 1;

    return 1;
}
